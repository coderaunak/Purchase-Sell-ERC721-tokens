const Rcoin = artifacts.require("RCoin");
const RNFT = artifacts.require("RNFT");

module.exports = function (deployer) {
  deployer.deploy(Rcoin, 10000);
  deployer.deploy(RNFT);
};
