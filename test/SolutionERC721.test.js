const solution = artifacts.require("SolutionERC721");

require('chai').should();

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

});