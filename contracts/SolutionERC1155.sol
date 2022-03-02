pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC1155/ERC1155.sol";

contract SolutionERC1155 is ERC1155{

    event tokeninfo(uint indexed id, uint token_id, address owner);
    uint nonce=0;

    constructor() ERC1155("example.json"){}

    //just mine new token
    function mint(uint amount,uint token_id) public{
        _mint(msg.sender,token_id, amount,"");
    }

    function mintnew(uint amount,uint token_id) public{
        _mint(msg.sender,token_id, amount,"");
        for (uint i = 0; i < amount; i++) {
            emit tokeninfo(nonce, token_id, msg.sender);
            nonce++;
        }
    }

    function transfer(uint id,uint token_id,address to) public{
        _safeTransferFrom(msg.sender,to,token_id,1,"");
        emit tokeninfo(id, token_id, to);
    }

    function mintbatch(uint[] memory amount,uint[] memory tokens_id) public{
        _mintBatch(msg.sender,tokens_id, amount,"");
    }

}