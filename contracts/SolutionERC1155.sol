pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC1155/ERC1155.sol";

contract SolutionERC1155 is ERC1155{

    uint public constant soultanina=0;
    uint public constant korinthiaki=1;

    constructor() ERC1155("example.json"){}

    //just mine new token
    function mint(uint amount,uint token_id) public{
        _mint(msg.sender,token_id, amount,"");
    }

}