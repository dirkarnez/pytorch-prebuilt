export DOWNLOADS_DIR=/C/Users/19081126D/Downloads

export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/opt/bin:/c/Windows/System32:/c/Windows:/c/Windows/System32/WindowsPowerShell/v1.0/:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$DOWNLOADS_DIR/PortableGit/bin:$DOWNLOADS_DIR/cmake-3.22.2-windows-x86_64/bin:$DOWNLOADS_DIR/python-3.10.8-amd64-portable:$DOWNLOADS_DIR/python-3.10.8-amd64-portable/Scripts" &&

# export JAVA_HOME=/C/Users/Administrator/Downloads/openjdk-11.0.1_windows-x64_bin/jdk-11.0.1
# export BAZEL_SH=%ROOT%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\bin\bash

export MSYSTEM=MINGW64 &&
cd $DOWNLOADS_DIR/PortableGit/pytorch &&
gcc --version &&
python -m pip install --upgrade pip  &&
python -m pip install pyyaml &&
python -m pip install typing-extensions &&
pacman -S mingw-w64-x86_64-headers-git &&
cmake -G"MinGW Makefiles" -DCMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES="${CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES} /mingw64/x86_64-w64-mingw32/include" -DUSE_NUMPY:BOOL="0" -DUSE_QNNPACK:BOOL="0" -DUSE_FBGEMM:BOOL="0" -DUSE_ITT:BOOL="0" -DUSE_MKLDNN:BOOL="0" -DUSE_KINETO:BOOL="0" -DDNNL_ENABLE_MAX_CPU_ISA:BOOL="0" -DDNNL_ENABLE_CPU_ISA_HINTS:BOOL="0" -DUSE_CUPTI_SO:BOOL="0" -DUSE_PYTORCH_QNNPACK:BOOL="0" -DBUILD_LAZY_TS_BACKEND:BOOL="0" -DUSE_OPENMP:BOOL="0" -DBUILD_CUSTOM_PROTOBUF:BOOL="0" -DBUILDING_WITH_TORCH_LIBS:BOOL="0" -DProtobuf_DIR:PATH="Protobuf_DIR-NOTFOUND" -DONNX_ML=OFF -DONNX_GEN_PB_TYPE_STUBS=OFF -DBUILD_PYTHON:BOOL="0" -DBUILD_SHARED_LIBS:BOOL="0" -DBUILD_BINARY:BOOL="1" -DBUILD_CAFFE2:BOOL="0" -DUSE_DISTRIBUTED:BOOL="0" -DCAFFE2_USE_MSVC_STATIC_RUNTIME:BOOL="0" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DCMAKE_INSTALL_PREFIX="cmake-build/cmake-installtion" -B"cmake-build" &&
cd cmake-build && 
cmake --build . && 
cmake --install . && 
read -p "done"