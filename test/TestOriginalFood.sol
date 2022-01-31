// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/OriginalFood.sol";

contract TestOriginalFood {

  function testNameAndSymbol() public {
    OriginalFood originalFood = OriginalFood(DeployedAddresses.OriginalFood());
    string memory name = "OriginalFood";
    string memory symbol = "OFT";
    Assert.equal(originalFood.name(), name, "It returns the name of the Token");
    Assert.equal(originalFood.symbol(), symbol, "It returns the symbol of the Token");
  }
  
}
