wget -cO sdk.tar.xz https://openwrt.cc/releases/targets/ipq40xx/generic/openwrt-sdk-ipq40xx-generic_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz
mkdir -p sdk
tar -xJf sdk.tar.xz -C sdk
cp -rf sdk/*/staging_dir/* ./staging_dir/
rm -rf sdk.tar.xz sdk
sed -i '/\(tools\|toolchain\)\/Makefile/d' Makefile
ln -sf /usr/bin/python staging_dir/host/bin/python
ln -sf /usr/bin/python staging_dir/host/bin/python3
