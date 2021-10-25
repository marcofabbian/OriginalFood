var FoodOrigin = artifacts.require("./FoodOrigin.sol");

module.exports = function(deployer) {
  deployer.deploy(FoodOrigin);
};
