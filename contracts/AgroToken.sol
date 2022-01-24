pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract AgroToken is ERC20{
<<<<<<< HEAD
    constructor(string memory _name, string memory _symbol, uint256 initialSupply) 
=======
    constructor(string memory _name, string memory _symbol)
>>>>>>> e32a53b0ce0ed255361ef31c61c309a25ca7e743
        ERC20(_name, _symbol)
    {
        _mint(msg.sender, initialSupply);

    }


}
