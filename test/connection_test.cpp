#include <catch.hpp>
#include <fakeit.hpp>
#include "connection.hpp"

using namespace Routing;

TEST_CASE("Constructing Peers", "[peers]")
{
    auto peer = Peer();
    REQUIRE(peer.id == 0);
}
