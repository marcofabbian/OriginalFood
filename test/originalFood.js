const originalFood = artifacts.require("./OriginalFood.sol");

contract("OriginalFood contract", accounts => {
  it("...should return NFT name and symbol.", async () => {
    const reference = await originalFood.deployed();

    //NFT Name
    const name = "OriginalFood";
    //NFT symbol
    const symbol = "OFT";

    assert.equal(await reference.name(), name, "It returns the name of the Token.");
    assert.equal(await reference.symbol(), symbol, "It returns the symbol of the Token.");
  });
});
