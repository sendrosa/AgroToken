const solution = artifacts.require("SolutionERC1155");

require('chai').should();

const accounts = web3.eth.getAccounts();

contract("solution", accounts => {

    beforeEach(async function(){
        this.token = await solution.new();
    });

    describe("mint supply ERC1155", function(){
        it("create correct supply for an id", async function(){
            let balance1 = await web3.eth.getBalance(accounts[0]);
            await this.token.mint(15, 0);
            const total= (await this.token.balanceOf("0x884e3a4912DAd1BfE07844F835f463cd9fD046A4",0)).toString();
            total.should.equal('15');
            let balance2 = await web3.eth.getBalance(accounts[0]);
            console.log(balance1-balance2);
        });
    });

});