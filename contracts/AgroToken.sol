pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract AgroToken is ERC20{
    constructor(string memory _name, string memory _symbol) 
        ERC20(_name, _symbol)
    {

    }

    //just mine new token
    function mint(uint _tokens) public{
        _mint(msg.sender,_tokens);
    }

  // function buyTokens(address _recipient) public payable {
  //   require(_recipient != address(0));
  //   require(msg.value != 0);

  //   uint256 tokens = msg.value/10**16;

  //   token.transfer(_recipient, tokens);
  //   wallet.transfer(msg.value);
  // }
}
