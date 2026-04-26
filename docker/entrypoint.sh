cd /root/armcc

export CC="wine /root/msvc/Vc7/bin/cl.exe"
export LD="wine /root/msvc/Vc7/bin/link.exe"
export INCLUDE="Z://root/msvc/Vc7/include"
export LIB="Z://root/msvc/Vc7/lib;Z://root/msvc/Vc7/PlatformSDK/lib"
export BUILD="build"
export OUT="out"

make
