#include "minivim.hpp"

int main( int argc , char **argv ){
  if(argc > 1){
    auto minivim = std::make_shared<MiniVim>(argv[1]);
    minivim->run();
  }else{
    auto minivim = std::make_shared<MiniVim>("");
    minivim->run();
  }
  return 0;
}

