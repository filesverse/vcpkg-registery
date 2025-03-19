vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v${VERSION}
  SHA512 12ff6b48e006d1768c197139360d3c816b8d3e842b43b6ff9b9f35de1a76eb55e81a282b5f3320e9776e1947b2c63702926aa51bd13567a37382c82df58e4609
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")

if (VCPKG_TARGET_IS_LINUX)
  vcpkg_fixup_pkgconfig()
endif()
