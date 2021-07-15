set(CMAKE_UNITY_BUILD false)
set(CMAKE_UNITY_BUILD_BATCH_SIZE 16)

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

set_source_files_properties(${sources} PROPERTIES LANGUAGE CXX)
set_source_files_properties(${headers} PROPERTIES LANGUAGE CXX)

add_library(TM4C_driverlib ${sources})
target_include_directories(TM4C_driverlib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

target_compile_options(TM4C_driverlib PRIVATE
  -Wno-register
)

target_precompile_headers(
  TM4C_driverlib
  PUBLIC
  <stddef.h>
  <stdint.h>
  <stdbool.h>
  <string.h>
)