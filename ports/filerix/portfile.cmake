vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.1.0-1
  SHA512 1570989d31b87d6a031c37d9e50af93059026701207513fc933a4ddaa7b2eedbe6e6d609ee4623d35f28495d69f1730468b76998855ad3eece0ccfef62721d8a
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
vcpkg_fixup_pkgconfig()
