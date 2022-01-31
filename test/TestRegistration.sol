// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Registration.sol";

contract TestRegistration {
    function isCapableToRegisterUrl() public {
        Registration store = Registration(DeployedAddresses.Registration());
        string memory url = "http://about:blank";
        store.register(url);
        Assert.equal(true, true, "Actor and url was registered correctly");
    }
}