project(libp2p CXX)

add_library(libp2p connection.hpp
                   connection.cpp)

target_compile_features(libp2p PUBLIC cxx_auto_type)
