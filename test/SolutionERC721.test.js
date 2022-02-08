const solution = artifacts.require("SolutionERC721");


require('chai').should();

const accounts = web3.eth.getAccounts();

contract("solution", accounts => {
    const _name= "solution";
    const _symbol="AGT";

    beforeEach(async function(){
        this.token = await solution.new(_name, _symbol);
    });

    describe("token attributes", function(){
        it("has a correct name", async function(){
            const name= await this.token.name();
            name.should.equal(_name);
        });
    });
    describe("mint supply ERC721", function(){
        it("create correct supply for an id", async function(){
            let balance1 = await web3.eth.getBalance(accounts[0]);
            for (let i=0; i<15;i++){
                await this.token.mint(0, 1);
            }
            const total= (await this.token.balanceOf("0x884e3a4912DAd1BfE07844F835f463cd9fD046A4")).toString();
            total.should.equal('15');
            await this.token.mint(0, 1);
            let balance2 = await web3.eth.getBalance(accounts[0]);
            console.log(balance1-balance2);
        });
    });

});