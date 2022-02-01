// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRegistration {
  function register(string memory url) external;
  function isRegistered(address actor) external view returns(bool);

  event Registration(address actor, string url);
}
