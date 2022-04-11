// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    uint public tokenCount;
    constructor() ERC721("TOKEANA NFT", "TOPA"){}
//constructure function is called only  once in the coding event
 
    function mint(string memory _tokenURI) external returns(uint) {
//the function "mint" is when it calls the code to start minting "tokenuri" is the 
//"tokenuri" is the meta of the NFT imported from ipfs 

        tokenCount ++; //++ is another way of increasing token count 
        _safeMint(msg.sender, tokenCount); // "safemint" will call for the sender and meta data before  starting  the minitng process 
        _setTokenURI(tokenCount, _tokenURI); // this function sets the metadata  passing into the new nft (id and and data )
        return(tokenCount);
    }
}