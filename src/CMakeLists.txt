project(libp2p VERSION 0.0.1)

add_library(libp2p connection.hpp
                   connection.cpp)

include_directories(${Boost_INCLUDE_DIRS})

target_compile_features(libp2p PUBLIC cxx_auto_type)
