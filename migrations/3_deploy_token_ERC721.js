const solutionerc721 = artifacts.require("SolutionERC721");

module.exports = function (deployer) {
    const _name= "AgroToken";
    const _symbol="AGT";
    deployer.deploy(solutionerc721, _name, _symbol);
};
