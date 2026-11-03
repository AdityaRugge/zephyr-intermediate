# Secure-boot demo: run from a clean machine and keep the working fix

This note captures the exact fix that made the Zephyr + TF-M secure-boot demo work reliably from a fresh environment, and the exact commands to rerun it from the beginning.

## 1. The actual fixes that were needed

### A. Install QEMU in the dev image

The container image was missing a usable QEMU binary. The fix was to add `qemu-system-arm` to the package install list in [docker/Dockerfile](docker/Dockerfile):

If the GitHub fetch of Zephyr fails during `west update` with a GnuTLS / early EOF error, add this before the `west init` step as well:

```dockerfile
USER dev
RUN git config --global http.version HTTP/1.1
```

This forces Git to use HTTP/1.1 instead of HTTP/2, which avoids the TLS decode failure seen during the manifest fetch.


```dockerfile
RUN apt-get update && apt-get install -y --no-install-recommends \
      ca-certificates \
      ccache \
      cmake \
      curl \
      device-tree-compiler \
      file \
      gcc \
      git \
      gperf \
      make \
      ninja-build \
    qemu-system-arm \
      python3-dev \
      python3-pip \
      python3-venv \
      wget \
      xz-utils \
    && rm -rf /var/lib/apt/lists/*
```

This ensures the container has the emulator required by the demo.

### B. Keep a fallback to the system QEMU binary

The launcher script in [scripts/qemu.sh](scripts/qemu.sh) originally assumed the Zephyr SDK had a local QEMU under a specific SDK directory. That failed when the SDK layout was different or the binary was absent. The fix was to fall back to the system-installed QEMU:

```bash
# The Zephyr SDK ships its own QEMU, in one of two places depending on the SDK layout.
SDK_BIN="x86_64-pokysdk-linux/usr/bin/qemu-system-arm"
QEMU="${ZEPHYR_SDK_INSTALL_DIR}/sysroots/${SDK_BIN}"
if [ ! -x "${QEMU}" ]; then
    QEMU="${ZEPHYR_SDK_INSTALL_DIR}/hosttools/sysroots/${SDK_BIN}"
fi
if [ ! -x "${QEMU}" ]; then
    QEMU="$(command -v qemu-system-arm || true)"
fi
if [ -z "${QEMU}" ] || [ ! -x "${QEMU}" ]; then
    echo "error: qemu-system-arm not found under ${ZEPHYR_SDK_INSTALL_DIR}" >&2
    exit 1
fi
```

This is the key change that made the demo actually boot in this environment.

---

## 2. Docker/Colima recovery if the Docker context is lost

On macOS, the Docker daemon may appear to be working but the active Docker context can become invalid. In this setup, the fix was:

```bash
colima start && docker context use colima && docker info
```

This re-establishes the Docker context and confirms the daemon is reachable again.

If you get a Docker context or socket error, run the command above before building the image or running the demo.

---

## 3. Clean-start commands to reproduce the demo

Run these from a fresh machine or a clean repo checkout.

### Clone the project

```bash
git clone -b l7-secure-boot-demo https://github.com/iomico-public/zephyr-intermediate.git ~/secure-boot-app
cd ~/secure-boot-app
```

### Restore Docker context (macOS / Colima)

```bash
colima start
docker context use colima
docker info
```

### Build the dev image

```bash
docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) -t zephyr-sb:3.7.2 docker
```

### Verify QEMU is available from inside the container

```bash
./scripts/dev.sh qemu-system-arm --version
```

This should print a valid QEMU version, such as:

```text
QEMU emulator version 6.2.0
```

### Run the success exercise

```bash
./scripts/demo.sh success
```

Expected result: the image boots successfully and the protected-storage sample runs.

### Run the tamper exercise

```bash
./scripts/demo.sh tamper
```

Expected result:

```text
Image in the primary slot is not valid!
Unable to find bootable image
```

This is the correct secure-boot behavior: the modified image is rejected.

---

## 4. Useful commands for future runs

### Force a rebuild

```bash
FORCE=1 ./scripts/demo.sh success
```

### Shorten the QEMU timeout

```bash
TIMEOUT=10 ./scripts/demo.sh tamper
```

### Open a shell inside the container

```bash
./scripts/dev.sh
```

### Run a command inside the container without opening a shell

```bash
./scripts/dev.sh west --version
```

---

## 5. What to expect during a successful run

A valid boot should show the bootloader, TF-M, and Zephyr startup banners, ending with the sample running normally.

For the tamper case, the expected behavior is a rejection, not a crash. The QEMU process will stop after the timeout; that shutdown is expected on the AN521 board because the board has no power-off behavior.

---

## 6. Summary of the fix

The actual root cause was a combination of two issues:

1. the dev container did not include `qemu-system-arm`;
2. the QEMU launcher was too strict about the SDK-specific path and did not fall back to the system binary.

The final working setup was:

- add QEMU to [docker/Dockerfile](docker/Dockerfile);
- add a fallback to `command -v qemu-system-arm` in [scripts/qemu.sh](scripts/qemu.sh);
- restore Docker context with `colima start && docker context use colima` when needed.

This is the combination that made the demo run reliably from a clean start.
