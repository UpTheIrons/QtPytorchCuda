Output sample:
0.7010  0.8819  0.8081
0.3136  0.8220  0.6841
0.4798  0.9717  0.2883
[ CUDAFloatType{3,3} ]
0.7010  0.8819  0.8081
0.3136  0.8220  0.6841
0.4798  0.9717  0.2883
[ CUDAFloatType{3,3} ]
Press <RETURN> to close this window...

References:
https://radicalrafi.github.io/posts/pytorch-cpp-intro/
https://discuss.pytorch.org/t/error-pytorch-is-not-linked-with-support-for-cuda-devices/103807

No success w/PRE_TARGETDEPS, the real catch was QMAKE_LFLAGS += -Wl,--no-as-needed
Otherwise gets the runtime error PyTorch is not linked with support for cuda devices as bellow when compiling using eigther opts or nograds:

terminate called after throwing an instance of 'c10::Error'
  what():  PyTorch is not linked with support for cuda devices
Exception raised from getDeviceGuardImpl at ../c10/core/impl/DeviceGuardImplInterface.h:224 (most recent call first):
