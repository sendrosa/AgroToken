pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract AgroToken is ERC20{
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {

    }


}
