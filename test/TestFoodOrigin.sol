pragma solidity >=0.4.21 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/FoodOrigin.sol";

contract TestFoodOrigin {

  function testItStoresAValue() public {
    FoodOrigin foodOrigin = FoodOrigin(DeployedAddresses.FoodOrigin());

    foodOrigin.set(89);

    uint expected = 89;

    Assert.equal(foodOrigin.get(), expected, "It should store the value 89.");
  }

}
