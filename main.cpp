#include <torch/script.h> // One-stop header.
//#include <torch/torch.h>
//#include <ATen/ATen.h>
//#include <torch/csrc/autograd/variable.h>
//#include <torch/csrc/autograd/function.h>

#include <iostream>
#include <memory>

using namespace std;

int main(){
  auto opts =
    torch::TensorOptions()
      .dtype(torch::kFloat32)
      .layout(torch::kStrided)
      .device(torch::kCUDA)
      .requires_grad(true);
  auto nograds =
    torch::TensorOptions()
      .dtype(torch::kFloat32)
      .layout(torch::kStrided)
      .device(torch::kCUDA)
      .requires_grad(false);

    // build a 2-D (3,3) Tensor
//  at::Tensor mat = torch::rand({3,3});
    at::Tensor mat = torch::rand({3,3},opts);
//    at::Tensor mat = torch::rand({3,3},nograds);
//  at::Tensor identity = torch::ones({3,3});
    at::Tensor identity = torch::ones({3,3},opts);
//    at::Tensor identity = torch::ones({3,3},nograds);
    std::cout << mat << std::endl;
    std::cout << mat * identity << std::endl;
}
