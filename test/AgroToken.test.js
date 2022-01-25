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
});