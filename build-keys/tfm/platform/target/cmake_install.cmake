# Install script for directory: /opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/target/arm/mps2/an521

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "MinSizeRel")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/zephyr-sdk-0.16.9/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/test_interrupt.c;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/arm_uart_drv.c;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/timer_cmsdk.c;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/Driver_USART.c;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/platform_retarget_dev.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/common/test_interrupt.c"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/native_drivers/arm_uart_drv.c"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/native_drivers/timer_cmsdk/timer_cmsdk.c"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/cmsis_drivers/Driver_USART.c"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/retarget/platform_retarget_dev.c"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/cmsis_core;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/retarget")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform" TYPE DIRECTORY MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/cmsis_core"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/retarget"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/driver")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/region_defs.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/flash_layout.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/arm_uart_drv.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/timer_cmsdk.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/mpc_sie200_drv.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/ppc_sse200_drv.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/platform_retarget.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/platform_retarget_pins.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/target_cfg.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/device_cfg.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/tfm_peripherals_def.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/cmsis_driver_config.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/RTE_Device.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/test_interrupt.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/Driver_USART.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/Driver_Common.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/tfm_plat_defs.h;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include/fih.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/include" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/partition/region_defs.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/partition/flash_layout.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/native_drivers/arm_uart_drv.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/native_drivers/timer_cmsdk/timer_cmsdk.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/native_drivers/mpc_sie200_drv.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/native_drivers/ppc_sse200_drv.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/retarget/platform_retarget.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/retarget/platform_retarget_pins.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/target_cfg.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/device_cfg.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/tfm_peripherals_def.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/cmsis_driver_config.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/RTE_Device.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/common/test_interrupt.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/driver/Driver_USART.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/driver/Driver_Common.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/include/tfm_plat_defs.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/lib/fih/inc/fih.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/linker_scripts/tfm_common_ns.ld;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/linker_scripts/tfm_common_ns.sct;/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/linker_scripts/tfm_common_ns.icf")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/linker_scripts" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/common/gcc/tfm_common_ns.ld"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/common/armclang/tfm_common_ns.sct"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/common/iar/tfm_common_ns.icf"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/ns/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/cpuarch.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/cpuarch.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/config.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/config.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform/tests")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-keys/tfm/api_ns/platform" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/../platform/ext/target/arm/mps2/an521/tests")
endif()

