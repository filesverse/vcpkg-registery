vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.1.0-2
  SHA512 dbb897713c4c322e9966985e34fa0f5f2dfc4f9e06796dd3bd436177e1a9afa25836bc5358cb4bfe29f1a37c8ac9778078131daddb47006a7b428a4a1ed2260b
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
