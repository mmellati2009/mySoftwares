superbuild_add_project(ispc
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND
    "${CMAKE_COMMAND}" -E copy_if_different
      <SOURCE_DIR>/ispc${CMAKE_EXECUTABLE_SUFFIX}
      <INSTALL_DIR>/bin/ispc${CMAKE_EXECUTABLE_SUFFIX})
