// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/access/Ownable.sol';


contract Proyecto is ERC721, Ownable {
    uint256 public mintPrice= 0.01 ether; 
    uint256 public totalSupply;
    uint public maxSupply;
    bool public isMintEnabled;
    mapping(address => uint256) public mintedWallets;
    constructor() payable ERC721("Proyecto", "PRO") {
        maxSupply = 2;
    }
    // lo que hace esta funcion es poner en TRUE la funcion isMintEnabled, porque por default esta en Flase
    function toggleIsMintEnabled() external onlyOwner{
        isMintEnabled = !isMintEnabled;
    }
    // esta funcion permite que solamente el owner cambie el max supply
    function setMaxSupply(uint256 maxSupply_) external onlyOwner{
        maxSupply = maxSupply_;
    }


    function mint() external payable {
        require (isMintEnabled, 'minting not enabled');
        // esta linea de abajo dice que cada walle solo puede mintear 1
        require(mintedWallets [msg.sender] < 1, ' exceedes max per wallet');
        require(msg.value == mintPrice, 'wrong value');
        require(maxSupply > totalSupply, ' sold out');

        // esta linea sirve para saber cuantas veces fue minteado el nft
        mintedWallets[msg.sender]++;
        totalSupply++;
        uint256 tokenId = totalSupply;
        // safemint viene del contrato ERC que importe y permite mintear de manera segura
        _safeMint(msg.sender, tokenId);
    }



}