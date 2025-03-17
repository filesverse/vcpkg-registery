vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.1.0-3
  SHA512 09077755ae3c0b842109a7796d1d050d2f8574e0da5e31262bb591ecc3f3994f5980abc295c027671fcdb5f9d3669fd1196a29e9acda591e5f6f1df1dc504ffa
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
