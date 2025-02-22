if(NOT ENABLE_LITE_BACKEND)
  message("Will force to set ENABLE_LITE_BACKEND when build with KunlunXin.")
  set(ENABLE_LITE_BACKEND ON)
endif()

if(NOT CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "x86_64")
  message(FATAL_ERROR "KunlunXin XPU is only supported on Linux x64 platform")
endif()

option(WITH_LITE_XPU_LOG "" ON)
if(NOT PADDLELITE_URL)
  if (WITH_LITE_XPU_LOG)
    set(PADDLELITE_URL "https://bj.bcebos.com/fastdeploy/third_libs/lite-linux-x64-xpu-20221215.tgz")
    # set(PADDLELITE_URL "https://bj.bcebos.com/fastdeploy/third_libs/lite-linux-x64-xpu-20230303.tgz")
  else()
    set(PADDLELITE_URL "https://bj.bcebos.com/fastdeploy/third_libs/lite-linux-x64-xpu-without-log-20230303.tgz")
  endif()
endif()
