set(CMAKE_UNITY_BUILD true)
set(CMAKE_UNITY_BUILD_BATCH_SIZE 16)

file(GLOB_RECURSE driverlib_sources CONFIGURE_DEPENDS
  "${CMAKE_CURRENT_SOURCE_DIR}/driverlib/*.c"
  "${CMAKE_CURRENT_SOURCE_DIR}/driverlib/*.cpp"
)

file(GLOB_RECURSE driverlib_headers CONFIGURE_DEPENDS
  "${CMAKE_CURRENT_SOURCE_DIR}/driverlib/*.h"
  "${CMAKE_CURRENT_SOURCE_DIR}/driverlib/*.hpp"
  "${CMAKE_CURRENT_SOURCE_DIR}/inc/*.h"
  "${CMAKE_CURRENT_SOURCE_DIR}/inc/*.hpp"
)

add_library(TM4C_driverlib ${driverlib_sources} ${driverlib_headers})
target_include_directories(TM4C_driverlib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})