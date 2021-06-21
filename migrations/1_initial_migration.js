var Migrations = artifacts.require("./Migrations.sol");
//handles deploying the Migrations.sol contract to observe subsequent smart contract migrations, and ensures we don't double-migrate unchanged contracts in the future
module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
