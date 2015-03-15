project(libp2p VERSION 0.0.1)

include(boost-system boost-asio)

add_library(libp2p connection.hpp
                   connection.cpp)

add_dependencies(libp2p boost_asio)
include_directories(${Boost_INCLUDE_DIRS})

target_compile_features(libp2p PUBLIC cxx_auto_type)
