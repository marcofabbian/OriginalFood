pragma solidity >=0.4.21 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/OriginalFood.sol";

contract TestOriginalFood {

  function testItStoresAValue() public {
    OriginalFood originalFood = OriginalFood(DeployedAddresses.OriginalFood());

    originalFood.set(89);

    uint expected = 89;

    Assert.equal(originalFood.get(), expected, "It should store the value 89.");
  }

}
