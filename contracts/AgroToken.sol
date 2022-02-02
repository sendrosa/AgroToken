pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract AgroToken is ERC20{

    event tokeninfo(uint uri, uint batchno);
    event status(bytes32 info);

    constructor(string memory _name, string memory _symbol) 
        ERC20(_name, _symbol){}

    //just mine new token
    function mint(uint _tokens, uint uri, uint batchno) public{
        _mint(msg.sender,_tokens);
        emit tokeninfo(uri, batchno);
    }

    function del(uint _tokens, bytes32 info) public{
        _burn(msg.sender,_tokens);
        emit status(info);
    }

  // create a craft function
}
