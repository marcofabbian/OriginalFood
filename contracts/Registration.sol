// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IRegistration.sol";

contract Registration is IRegistration {
  //Registration Actor Role
  enum Role { Farmer, Carrier, Dealer }

  //Actor information mapping
  mapping(address => string) actors;

  constructor() {}

  function register(string memory url) public override {
    address actor = msg.sender;
    require(actor != address(0), "Actor address can not be empty");
    require(!isRegistered(actor), "Actor already registered");

    actors[actor] = url;

    emit Registration(actor, url);
  }

  function isRegistered(address actor) public view override returns(bool) {
    bytes memory act = bytes(actors[actor]);
    if(act.length == 0) {
      return false;
    } else {
      return true;
    }
  }

}