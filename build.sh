make clean
rm ./packages/*.deb
gmake -j$(sysctl -n hw.ncpu) package