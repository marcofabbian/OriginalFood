const OriginalFood = artifacts.require("./OriginalFood.sol");

contract("OriginalFood", accounts => {
  it("...should store the value 89.", async () => {
    const originalFoodInstance = await OriginalFood.deployed();

    // Set value of 89
    await originalFoodInstance.set(89, { from: accounts[0] });

    // Get stored value
    const storedData = await originalFoodInstance.get.call();

    assert.equal(storedData, 89, "The value 89 was not stored.");
  });
});
