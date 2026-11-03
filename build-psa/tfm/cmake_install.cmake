# Install script for directory: /opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/opt/zephyr-ws/secure-boot-app/build-psa/tfm/lib/ext/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/opt/zephyr-ws/secure-boot-app/build-psa/tfm/lib/fih/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/opt/zephyr-ws/secure-boot-app/build-psa/tfm/tools/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/opt/zephyr-ws/secure-boot-app/build-psa/tfm/secure_fw/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/opt/zephyr-ws/secure-boot-app/build-psa/tfm/interface/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/opt/zephyr-ws/secure-boot-app/build-psa/tfm/bl2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/opt/zephyr-ws/secure-boot-app/build-psa/tfm/platform/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/bin/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/lib/s_veneers.o")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/lib" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/secure_fw/s_veneers.o")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/client.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/error.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/client.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/error.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa_manifest/sid.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa_manifest" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/generated/interface/include/psa_manifest/sid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/config_impl.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/generated/interface/include/config_impl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/tfm_veneers.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/tfm_ns_interface.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_veneers.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_ns_interface.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/tfm_ns_client_ext.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_ns_client_ext.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/config_tfm.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/secure_fw/include/config_tfm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/config_base.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/config_base.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/tfm_psa_call_pack.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_psa_call_pack.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/framework_feature.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/generated/interface/include/psa/framework_feature.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/protected_storage.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/storage_common.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/protected_storage.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/storage_common.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/tfm_ps_defs.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_ps_defs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/internal_trusted_storage.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/storage_common.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/internal_trusted_storage.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/storage_common.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/tfm_its_defs.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_its_defs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/README.rst;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/build_info.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_adjust_auto_enabled.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_adjust_config_dependencies.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_adjust_config_key_pair_types.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_adjust_config_synonyms.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_builtin_composites.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_builtin_key_derivation.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_builtin_primitives.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_compat.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_driver_common.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_driver_contexts_composites.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_driver_contexts_key_derivation.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_driver_contexts_primitives.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_extra.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_legacy.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_platform.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_se_driver.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_sizes.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_struct.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_types.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa/crypto_values.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/psa" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/README.rst"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/build_info.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_adjust_auto_enabled.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_adjust_config_dependencies.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_adjust_config_key_pair_types.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_adjust_config_synonyms.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_builtin_composites.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_builtin_key_derivation.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_builtin_primitives.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_compat.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_driver_common.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_driver_contexts_composites.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_driver_contexts_key_derivation.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_driver_contexts_primitives.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_extra.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_legacy.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_platform.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_se_driver.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_sizes.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_struct.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_types.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_values.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/tfm_crypto_defs.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_crypto_defs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/mbedtls")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/mbedtls")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/tfm_platform_api.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_platform_api.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/crypto_keys")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/crypto_keys")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src/tfm_tz_psa_ns_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/src/tfm_tz_psa_ns_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include/os_wrapper")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/include" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/include/os_wrapper")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src/os_wrapper")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/src/os_wrapper")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src/tfm_ps_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/src/tfm_ps_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src/tfm_its_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/src/tfm_its_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src/tfm_crypto_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/src/tfm_crypto_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src/tfm_platform_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/interface/src" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/interface/src/tfm_platform_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/scripts")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/bl2/ext/mcuboot/scripts" REGEX "/scripts\\/[^/]*\\.py$" PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ REGEX "/scripts\\/wrapper\\/[^/]*\\.py$" PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/scripts/imgtool")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/scripts" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/bootloader/mcuboot/scripts/imgtool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/layout_files/signing_layout_s.o")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/layout_files" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/bl2/ext/mcuboot/CMakeFiles/signing_layout_s.dir/./signing_layout_s.o")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/keys/image_s_signing_private_key.pem")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/keys" TYPE FILE MESSAGE_LAZY RENAME "image_s_signing_private_key.pem" FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/bl2/ext/mcuboot/root-EC-P256.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/keys/image_s_signing_public_key.pem")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/keys" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/bin/image_s_signing_public_key.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/layout_files/signing_layout_ns.o")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/layout_files" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/bl2/ext/mcuboot/CMakeFiles/signing_layout_ns.dir/./signing_layout_ns.o")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/keys/image_ns_signing_private_key.pem")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/keys" TYPE FILE MESSAGE_LAZY RENAME "image_ns_signing_private_key.pem" FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/bl2/ext/mcuboot/root-EC-P256_1.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/keys/image_ns_signing_public_key.pem")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/image_signing/keys" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/bin/image_ns_signing_public_key.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/config/cp_check.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/config" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/config/cp_check.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  MESSAGE("----- Installing platform NS -----")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/ext/cmsis/Include")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/ext/cmsis" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/cmsis/CMSIS/Core/Include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/ext/common/uart_stdout.c;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/ext/common/uart_stdout.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/ext/common" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/common/uart_stdout.c"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ext/common/uart_stdout.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/include")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform" TYPE DIRECTORY MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/CMakeLists.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns" TYPE FILE MESSAGE_LAZY RENAME "CMakeLists.txt" FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/cmake/spe-CMakeLists.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/toolchain_ns_GNUARM.cmake;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/toolchain_ns_ARMCLANG.cmake;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/toolchain_ns_IARARM.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ns/toolchain_ns_GNUARM.cmake"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ns/toolchain_ns_ARMCLANG.cmake"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/ns/toolchain_ns_IARARM.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/include/fih.h;/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/include/tfm_plat_ns.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/platform/include" TYPE FILE MESSAGE_LAZY FILES
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/lib/fih/inc/fih.h"
    "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/platform/include/tfm_plat_ns.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/spe_export.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/spe_export.cmake"
         "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/CMakeFiles/Export/_opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/spe_export.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/spe_export-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/spe_export.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/spe_export.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/CMakeFiles/Export/_opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/spe_export.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake/set_extensions.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/api_ns/cmake" TYPE FILE MESSAGE_LAZY FILES "/opt/zephyr-ws/modules/tee/tf-m/trusted-firmware-m/cmake/set_extensions.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/opt/zephyr-ws/secure-boot-app/build-psa/tfm/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
