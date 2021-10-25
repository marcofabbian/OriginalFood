const FoodOrigin = artifacts.require("./FoodOrigin.sol");

contract("FoodOrigin", accounts => {
  it("...should store the value 89.", async () => {
    const foodOriginInstance = await FoodOrigin.deployed();

    // Set value of 89
    await foodOriginInstance.set(89, { from: accounts[0] });

    // Get stored value
    const storedData = await foodOriginInstance.get.call();

    assert.equal(storedData, 89, "The value 89 was not stored.");
  });
});
