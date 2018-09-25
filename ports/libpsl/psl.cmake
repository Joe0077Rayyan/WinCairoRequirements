# Download PSL file

vcpkg_from_github(
    OUT_SOURCE_PATH PSL_SOURCE_PATH
    REPO publicsuffix/list
    REF 8977945f11f21c23ccfdd5660ac173a87bceb025
    SHA512 626a5e1617048b1285e1c1d4001203c225eb255be4d7f951e9d5c31a9f484cd213811608955a991237c74909e215682b1c8a9202dc9855b72bf1796a57b018e0
    HEAD_REF master
)

file(INSTALL ${PSL_SOURCE_PATH}/public_suffix_list.dat DESTINATION ${CURRENT_PACKAGES_DIR}/share/libpsl)
file(INSTALL ${PSL_SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/libpsl RENAME copyright-psl)