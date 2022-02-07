set(CMAKE_UNITY_BUILD true)
set(CMAKE_UNITY_BUILD_BATCH_SIZE 64)

file(GLOB_RECURSE sources CONFIGURE_DEPENDS
  "${CMAKE_CURRENT_SOURCE_DIR}/driverlib/*.c"
  "${CMAKE_CURRENT_SOURCE_DIR}/driverlib/*.cpp"
)

file(GLOB_RECURSE headers CONFIGURE_DEPENDS
  "${CMAKE_CURRENT_SOURCE_DIR}/driverlib/*.h"
  "${CMAKE_CURRENT_SOURCE_DIR}/driverlib/*.hpp"
  "${CMAKE_CURRENT_SOURCE_DIR}/inc/*.h"
  "${CMAKE_CURRENT_SOURCE_DIR}/inc/*.hpp"
)

set_source_files_properties(${sources} PROPERTIES LANGUAGE C)
set_source_files_properties(${headers} PROPERTIES LANGUAGE C)

add_library(tm4c_driverlib ${sources})
target_include_directories(tm4c_driverlib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

target_precompile_headers(
  tm4c_driverlib
  PUBLIC
  <stddef.h>
  <stdint.h>
  <stdbool.h>
  <string.h>
)