function(use_driverlib project_name module_path)
  target_include_directories(${project_name} PUBLIC ${module_path})

  file(GLOB_RECURSE driverlib_sources CONFIGURE_DEPENDS
    "${module_path}/driverlib/*.c"
    "${module_path}/driverlib/*.cpp"
  )

  file(GLOB_RECURSE driverlib_headers CONFIGURE_DEPENDS
    "${module_path}/driverlib/*.h"
    "${module_path}/driverlib/*.hpp"
    "${module_path}/inc/*.h"
    "${module_path}/inc/*.hpp"
  )

  set_source_files_properties(${driverlib_sources} PROPERTIES LANGUAGE CXX)
  target_sources(${project_name} PUBLIC ${driverlib_sources})
endfunction()
