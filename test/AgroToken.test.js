const agrotoken = artifacts.require("AgroToken");

require('chai').should();

contract("AgroToken", accounts => {
    const _name= "AgroToken";
    const _symbol="AGT";

    beforeEach(async function(){
        this.token = await agrotoken.new(_name, _symbol);
    });

    describe("token attributes", function(){
        it("has a correct name", async function(){
            const name= await this.token.name();
            name.should.equal(_name);
        });
    });

    describe("mint supply", function(){
        it("create correct supply", async function(){
            await this.token.mint(15);
            const total= (await this.token.totalSupply()).toString();
            total.should.equal('15');
        });
    });
    describe("transfer", function(){
        it("create correct transfer", async function(){
            await this.token.mint(15);
            await this.token.transfer("0x747235e19f5d73d8089a5eb23b1ef79f83af7631", 2);
            const total= (await this.token.balanceOf("0x747235e19f5d73d8089a5eb23b1ef79f83af7631")).toString();
            total.should.equal('2');
        });
    });

});