paraview_add_plugin(vortexfinder2
  PLUGIN_NAME VortexFinder2
  DEPENDS boost qt cxx11
  DEPENDS_OPTIONAL qt4 qt5)

superbuild_add_extra_cmake_args(
  -DWITH_MACOS_RPATH:BOOL=FALSE)

# https://github.com/hguo/vortexfinder2/pull/9
superbuild_apply_patch(vortexfinder2 loader-path
  "Use @loader_path on macOS")
