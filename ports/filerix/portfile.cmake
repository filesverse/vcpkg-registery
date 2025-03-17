vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.1.0-4
  SHA512 48131a21a55948f7b33ba09aa2e2a69c3ceac287ff68749fe802fb0fba512a824377ac71702ed4c0e80daa2e049c693ce84fea410d013a74dc9e4d5a01e531da
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
