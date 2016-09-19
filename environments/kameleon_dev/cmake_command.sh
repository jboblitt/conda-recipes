${CONDA_PREFIX}/bin/cmake $1\
	-DCMAKE_FIND_ROOT_PATH=${CONDA_PREFIX} \
	-DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ \
	'-DCMAKE_CXX_FLAGS=-std=c++11 -stdlib=libc++' \
	'-DCMAKE_SHARED_LINKER_FLAGS=-Wl,-undefined,error -stdlib=libc++' \
	-DCMAKE_OSX_DEPLOYMENT_TARGET=10.7 \
	-DCDF_PATH=${CONDA_PREFIX} \
	-DBOOST_LIBRARYDIR=${CONDA_PREFIX}/lib \
	-DBOOST_INCLUDEDIR=${CONDA_PREFIX}/include \
	-DBoost_NO_SYSTEM_PATHS=ON \
	-DPYTHON_LIBRARY=${CONDA_PREFIX}/lib/libpython2.7.dylib \
	-DPYTHON_INCLUDE_DIR=${CONDA_PREFIX}/include/python2.7 \
	-DPYTHON_EXECUTABLE=${CONDA_PREFIX}/bin/python \
	-DBUILD_JAVA=OFF \
	-DBUILD_HDF5=ON \
	-DCMAKE_INSTALL_PREFIX=${CONDA_PREFIX} \
	-DINSTALL_CCMC_PYTHON_MODULE=ON