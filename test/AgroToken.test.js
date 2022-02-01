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
            await this.token.mint(15, 1, 1);
            const total= (await this.token.totalSupply()).toString();
            total.should.equal('15');
        });
    });
    describe("transfer", function(){
        it("create correct transfer", async function(){
            await this.token.mint(15, 1, 1);
            await this.token.transfer("0x747235e19f5d73d8089a5eb23b1ef79f83af7631", 2);
            const total= (await this.token.balanceOf("0x747235e19f5d73d8089a5eb23b1ef79f83af7631")).toString();
            total.should.equal('2');
        });
    });

    describe("delete", function(){
        it("make a correct delete", async function(){
            await this.token.mint(15, 1, 1);
            await this.token.transfer("0x747235e19f5d73d8089a5eb23b1ef79f83af7631", 2);
            await this.token.del(2, web3.utils.asciiToHex("it expired"));
            const total= (await this.token.balanceOf("0x884e3a4912DAd1BfE07844F835f463cd9fD046A4")).toString(); 
            total.should.equal('11');
        });
    });

});