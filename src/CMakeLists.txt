project(libp2p VERSION 0.0.1)

add_library(libp2p connection.hpp
                   connection.cpp)

target_compile_features(libp2p PUBLIC cxx_auto_type)
