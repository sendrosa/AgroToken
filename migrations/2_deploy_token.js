const agrotoken = artifacts.require("AgroToken");

module.exports = function (deployer) {
    const _name= "AgroToken";
    const _symbol="AGT";
    deployer.deploy(agrotoken, _name, _symbol, 100);
};
