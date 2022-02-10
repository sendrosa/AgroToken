pragma solidity >=0.4.22 <0.9.0;

import "erc721x/contracts/Core/ERC721X/ERC721XToken.sol";

// Example

contract SolutionERC721x is ERC721XToken {

    function name() external view returns (string) {
        return "Card";
    }

    function symbol() external view returns (string) {
        return "CRD";
    }

    // fungible mint
    function mint(uint256 _tokenId, address _to, uint256 _supply) external {
        _mint(_tokenId, _to, _supply);
    }

    // nft mint
    function mint(uint256 _tokenId, address _to) external {
        _mint(_tokenId, _to);
    }
}