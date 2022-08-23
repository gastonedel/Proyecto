// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/access/Ownable.sol';


contract Proyecto is ERC721, Ownable {
    uint256 public mintPrice= 1 ether; 
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
        require(maxSupply > totalSupply, ' sold out');

        // esta linea sirve para saber cuantas veces fue minteado el nft
        mintedWallets[msg.sender]++;
        totalSupply++;
        uint256 tokenId = totalSupply;
        // safemint viene del contrato ERC que importe y permite mintear de manera segura
        _safeMint(msg.sender, tokenId);
    }

        struct Figurita{
            string nombre;
            string posci;
            uint id;
            uint altura;
            uint peso;
            uint edad;
        }

        Figurita figurita1= Figurita("Saad Al Sheeb", "Arquero", 1, 185, 79, 32);
        Figurita figurita2= Figurita("Bassam Alrawi", "defensor",2,174, 77, 24);
        Figurita figurita3= Figurita("Abdulkarim Hassan", "defensor", 3, 186, 79, 28);
        Figurita figurita4= Figurita("Boualem Khoukhi", "mediocampista",4, 183, 76, 31);


        // se me ocurrio hacer un array que contenga las figuritas de cada usuario. Para eso tengo que crear
        // arrays y mappearlos a las addresses de cada persona. Entonces cada vez que alguien consigue una 
        //figurita, se suma a su array y cuando la tiene 2 veces, la puede vender. 

        mapping(address => Figurita[]) arrayAlbum;

        
        //arrayAlbum[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = [figurita1, figurita2];

        //arrayAlbum[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = [figurita3, figurita2, figurita4];


        }
        


        
