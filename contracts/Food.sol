pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/utils/math/SafeMath.sol";


contract Food{
  using SafeMath for uint256;
  ERC20 public token;
  address payable wallet;

  constructor(address payable _wallet, ERC20 _token) public {
    require(_wallet != address(0));

    wallet = _wallet;
  }

  fallback () external payable {
      buyTokens(msg.sender);
  }

  function buyTokens(address _recipient) public payable {
    require(_recipient != address(0));
    require(msg.value != 0);

    uint256 tokens = msg.value;

    token.transfer(_recipient, tokens);
    wallet.transfer(msg.value);
  }

}