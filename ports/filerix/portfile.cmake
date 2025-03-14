vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.1.0
  SHA512 6788e4be5505d7cb2d2b3fc56e868ea59ede3a30a9b0ede8497878fda80479fe5a63886489b2b8a0a7953793b2b4147146ffba9e3d94266f0dc15f5a46dbf38b
  HEAD_REF master
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
vcpkg_fixup_pkgconfig()
