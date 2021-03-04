TEMPLATE = app
CONFIG += console c++14
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += thread

INCLUDEPATH += /usr/include/c++/10
QMAKE_LIBDIR += /usr/lib/x86_64-linux-gnu
#PRE_TARGETDEPS += /usr/local/lib/libtorch_cuda.so /usr/local/lib/libc10_cuda.so

QMAKE_CXXFLAGS += -D_GLIBCXX_USE_CXX11_ABI=1
QMAKE_LFLAGS += -INCLUDE:?warp_size@cuda@at@@YAHXZ
QMAKE_LFLAGS += -Wl,--no-as-needed
#QMAKE_LFLAGS += -Wl,--copy-dt-needed-entries

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += link_pkgconfig
PKGCONFIG += cudart-11.2
PKGCONFIG += cublas-11.2
PKGCONFIG += curand-11.2
PKGCONFIG += cusolver-11.2
PKGCONFIG += cuda-11.2
PKGCONFIG += nvrtc-11.2
#PKGCONFIG += opencv4
#PKGCONFIG += python-3.8-embed

LIBS += -lcudnn

QMAKE_LIBDIR += /usr/local/lib

INCLUDEPATH += /usr/local/include
INCLUDEPATH += /usr/local/include/torch/csrc/api/include

LIBS += -ltorch
LIBS += -ltorch_cpu -lc10
LIBS += -ltorch_cuda -lc10_cuda
#LIBS += -ltorch_python
#LIBS += -ltorchbind_test
#LIBS += -lc10d_cuda_test
#LIBS += -lstdc++ -lm

SOURCES += \
        main.cpp

DISTFILES += \
    read.me
