cmake_dependent_option(PARAVIEW_WEB_TEST_REMOTE "" ON
  "paraview_enabled" ON)

if (PARAVIEW_TEST_REMOTE_WEB)
  include("${CMAKE_CURRENT_LIST_DIR}/paraview.test.web.cmake")
endif ()

if (paraview_enabled)
  include("${CMAKE_CURRENT_LIST_DIR}/paraview.test.cmake")
endif ()

if (paraviewsdk_enabled)
  include("${CMAKE_CURRENT_LIST_DIR}/paraviewsdk.test.cmake")
endif ()
