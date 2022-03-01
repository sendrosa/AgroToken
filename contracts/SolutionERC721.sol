pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721.sol";

contract SolutionERC721 is ERC721{

    event tokeninfo(uint indexed id, uint uri, uint batchno);
    event status(bytes32 info);
    uint nonce=0;

    constructor(string memory _name, string memory _symbol) 
        ERC721(_name, _symbol){}

    //just mine new token
    function mint(uint uri, uint batchno) public{
        _mint(msg.sender,nonce);
        emit tokeninfo(nonce, uri, batchno);
        nonce++;
    }

    function del(uint tokenid, bytes32 info) public{
        _burn(tokenid);
        emit status(info);
    }

}