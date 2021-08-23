//SPDX-License-Identifier: UNLICENSED

//pragma solidity 0.5.8;
pragma solidity 0.5.5;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";

contract Asset is ERC721Full {
  string[] public asset;
  mapping(string => bool) _contractExists;

  constructor() ERC721Full("Asset", "ASSET") public{
  }

  //e.g. color = "#ffffff"
  function mint(string  memory _contractNumber) public {
    //Require unique color
    require(!_contractExists[_contractNumber], "Token with this color is already defined");
    //Color - add it
    uint _id = asset.push(_contractNumber); //push returns the length of the new array
    //Call the mint function
    _mint(msg.sender, _id);
    //Color - track it
    _contractExists[_contractNumber] = true;
  }

  function setTokenURI(uint256 tokenId, string memory _tokenURI) public {
    _setTokenURI(tokenId, _tokenURI);
  }

  //tokenURI function obtains the url

}