superbuild_add_project(vtkm
  DEFAULT_ON
  DEPENDS tbb cxx11
  CMAKE_ARGS
  -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS}
  -DVTKm_ENABLE_TBB:BOOL=${tbb_enabled}
  -DVTKm_ENABLE_RENDERING:BOOL=OFF
  -DVTKm_ENABLE_TESTING:BOOL=OFF
  -DTBB_ROOT:PATH=<INSTALL_DIR>)

superbuild_add_extra_cmake_args(
  -DVTKm_DIR:PATH=<INSTALL_DIR>/lib)
