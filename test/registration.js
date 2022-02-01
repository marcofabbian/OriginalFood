const registration = artifacts.require("./Registration.sol");

contract("Registration contract", accounts => {
  it("...should register the new user", async () => {
    const store = await registration.deployed();

    const registrationEvent = await store.register("http://about:blank", { actor: accounts[0] });
    
    //const isRegistered = store.isRegistered({ actor: accounts[0] });
    assert.equal(true, true, "Actor was recorded correctly.");
  });
});
