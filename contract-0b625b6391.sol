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

        Figurita figurita1= Figurita("Saad Al Sheeb", "Portero", 1, 185, 79, 32);
        Figurita figurita2= Figurita("Bassam Alrawi", "Defensor",2,174, 77, 24);
        Figurita figurita3= Figurita("Abdulkarim Hassan", "Defensor", 3, 186, 79, 28);
        Figurita figurita4= Figurita("Boualem Khoukhi", "Mediocampista",4, 183, 76, 31);
        Figurita figurita5= Figurita("Pedro Miguel", "Defensor",5, 180, 73, 32);
        Figurita figurita6= Figurita("Tarek Salman", "Mediocampista",6, 174, 77, 24);
        Figurita figurita7= Figurita("Karim Boudiaf", "Defensor",7, 187, 64, 31);
        Figurita figurita8= Figurita("Abdulaziz Hatem", "Mediocampista",8, 182, 76, 31);
        Figurita figurita9= Figurita("Akram Hassan Afif", "Delantero",9, 177, 80, 25);
        Figurita figurita10= Figurita("Hassan Al-Haydos", "Delantero",10, 170, 58, 31);
        Figurita figurita11= Figurita("Almoez Ali", "Delantero",11, 180, 64, 26);
        Figurita figurita12= Figurita("Hernan Galindez", "Portero",12, 189, 80, 35);
        Figurita figurita13= Figurita("Previs Estupinian", "Defensor",13, 175, 79, 24);
        Figurita figurita14= Figurita("Perio Hincapie", "Defensor",14, 184, 66, 20);
        Figurita figurita15= Figurita("Angelo Preciado", "Defensor",15, 173, 73, 24);
        Figurita figurita16= Figurita("Felix Torres", "Defensor",16, 187, 78, 25);
        Figurita figurita17= Figurita("Moises Caicedo", "Mediocampista",17, 178, 73, 20);
        Figurita figurita18= Figurita("Carlos Gruezo", "Mediocampista",18, 173, 71, 27);
        Figurita figurita19= Figurita("Michael Estrada", "Delantero",19, 188, 86, 26);
        Figurita figurita20= Figurita("Angel Mena", "Delantero",20, 168, 65, 34);
        Figurita figurita21= Figurita("Gonzalo Plata", "Delantero",21, 178, 65, 21);
        Figurita figurita22= Figurita("Enner Valencia", "Delantero",22, 177, 74, 32);
        Figurita figurita23= Figurita("Edouardo Medy", "Portero",23, 197, 93, 30);
        Figurita figurita24= Figurita("Saliou Ciss", "Dedensor",24, 173, 76, 32);
        Figurita figurita25= Figurita("Abdou Diallo", "Defensor",25, 187, 79, 26);
        Figurita figurita26= Figurita("Kalidou Koulibaly", "Defensor",26, 186, 78, 31);
        Figurita figurita27= Figurita("Bouna Saar", "Defensor",27, 178, 71, 30);
        Figurita figurita28= Figurita("Idrissa Gueye", "Mediocampista",28, 174, 66, 23);
        Figurita figurita29= Figurita("Cheikhou Kouyate", "Mediocampista",29, 192, 79, 32);
        Figurita figurita30= Figurita("Nampalys Mendy", "Mediocampista",30, 167, 78, 30);
        Figurita figurita31= Figurita("Boulaye Dia", "Delantero",31, 180, 67, 25);
        Figurita figurita32= Figurita("Sadio Mane", "Delantero",32, 174, 69, 30);
        Figurita figurita33= Figurita("Isamila Sarr", "Delantero",33, 185, 76, 24);
        Figurita figurita34= Figurita("Justin Bijlow", "Portero",34, 188, 84, 24);
        Figurita figurita35= Figurita("Daley Blind", "Defensor",35, 180, 72, 32);
        Figurita figurita36= Figurita("Matthis De Ligt", "Defensor",36, 189, 89, 23);
        Figurita figurita37= Figurita("Denzel Dumfries", "Defensor",37, 188, 80, 26);
        Figurita figurita38= Figurita("Stefan De Virj", "Defensor",38, 190, 78, 30);
        Figurita figurita39= Figurita("Virjil Van Dijk", "Defensor",39, 193, 92, 31);
        Figurita figurita40= Figurita("Frenkie De Jong", "Mediocampista",40, 180, 74, 25);
        Figurita figurita41= Figurita("Davy Klaasen", "Mediocampista",41, 179, 79, 29);
        Figurita figurita42= Figurita("Georginio Wijnaldum", "Mediocampista",42, 175, 69, 31);
        Figurita figurita43= Figurita("Steven Bergwijn", "Delantero",43, 178, 74, 25);
        Figurita figurita44= Figurita("Memphis Depay", "Delantero",44, 176, 78, 28);
        Figurita figurita45= Figurita("Jordan Pickford", "Arquero",45, 185, 77, 28);
        Figurita figurita46= Figurita("Harry Manguire", "Defensor",46, 194, 100, 29);
        Figurita figurita47= Figurita("Luke Shaw", "Defensor",47, 178, 75, 27);
        Figurita figurita48= Figurita("John Stones", "Defensor",48, 188, 70, 28);
        Figurita figurita49= Figurita("Kyle Walker", "Defensor",49, 178, 80, 32);
        Figurita figurita50= Figurita("Mason Mount", "Mediocampista",50, 180, 70, 23);
        Figurita figurita51= Figurita("Kalvin Phillips", "Mediocampista",51, 178, 73, 27);
        Figurita figurita52= Figurita("Declan Rice", "Mediocampista",52, 185, 76, 23);
        Figurita figurita53= Figurita("Phil Foden", "Mediocampista",53, 171, 61, 22);
        Figurita figurita54= Figurita("Harry Kane", "Delantero",54, 188, 69, 29);
        Figurita figurita55= Figurita("Raheem Sterling", "Delantero",55, 170, 69, 28);
        Figurita figurita56= Figurita("Alireza Beiranvand", "Portero",56, 198, 85, 29);
        Figurita figurita57= Figurita("Hossein Kananni", "Defensor",57, 188, 82, 28);
        Figurita figurita58= Figurita("Shoja Khalilzadeh", "Defensor",58, 183, 80, 33);
        Figurita figurita59= Figurita("Milad Mahommadi", "Defensor",59, 178, 79, 28);
        Figurita figurita60= Figurita("Omid Noorafkan", "Defensor",60, 182, 78, 25);
        Figurita figurita61= Figurita("Saeid Ezatolahi", "Mediocampista",61, 190, 84, 25);
        Figurita figurita62= Figurita("Ali Gholizadeh", "Mediocampista",62, 176, 69, 26);
        Figurita figurita63= Figurita("Alireza Jahanbakhsh", "Mediocampista",63, 180, 78, 29);
        Figurita figurita64= Figurita("Ahmad Nourollahi", "Mediocampista",64, 185, 83, 29);
        Figurita figurita65= Figurita("Sadar Azmoun", "Delantero",65, 186, 75, 27);
        Figurita figurita66= Figurita("Mehdi Taremi", "Delantero",66, 187, 69, 30);
        Figurita figurita67= Figurita("Matt Turner", "Portero",67, 191, 76, 28);
        Figurita figurita68= Figurita("Serginio Dest", "Defensor",68, 175, 62, 21);
        Figurita figurita69= Figurita("Antonee Robinson", "Defensor",69, 183, 70, 25);
        Figurita figurita70= Figurita("Deandre Yedlin", "Defensor",70, 172, 74, 29);
        Figurita figurita71= Figurita("Walker Zimmerman", "Defensor",71, 191, 68, 29);
        Figurita figurita72= Figurita("Tyler Adams", "Mediocampista",72, 175, 72, 23);
        Figurita figurita73= Figurita("Weston Mckennie", "Mediocampista",73, 180, 86, 24);
        Figurita figurita74= Figurita("Ricardo Pepi", "Delantero",74, 185, 74, 19);
        Figurita figurita75= Figurita("Christian Pulisic", "Delantero",75, 177, 73, 23);
        Figurita figurita76= Figurita("Giovanni Reyna", "Delantero",76, 185, 79, 19);
        Figurita figurita77= Figurita("Thimothy Weah", "Delantero",77, 183, 66, 22);
        Figurita figurita78= Figurita("Wayne Hennessey", "Portero",78, 198, 85, 35);
        Figurita figurita79= Figurita("Ethan Ampadu", "Defensor",79, 183, 78, 22);
        Figurita figurita80= Figurita("Ben Davies", "Defensor",80, 181, 76, 29);
        Figurita figurita81= Figurita("Connor Roberts", "Defensor",81, 173, 75, 26);
        Figurita figurita82= Figurita("Joe Rondon", "Defensor",82, 193, 90, 24);
        Figurita figurita83= Figurita("Neco Williams", "Defensor",83, 183, 72, 21);
        Figurita figurita84= Figurita("Joe Allen", "Mediocampista",84, 168, 62, 32);
        Figurita figurita85= Figurita("Aaron Ramsey", "Mediocampista",85, 180, 78, 32);
        Figurita figurita86= Figurita("Gareth Bale", "Delantero",86, 185, 81, 33);
        Figurita figurita87= Figurita("Daniel James", "Delantero",87, 170, 76, 24);
        Figurita figurita88= Figurita("Kiefer Moore", "Delantero",88, 196, 80, 30);
        Figurita figurita89= Figurita("Emiliano Martinez", "Portero",89, 193, 88, 29);
        Figurita figurita90= Figurita("Marcos Acunia", "Defensor",90, 172, 72, 30);
        Figurita figurita91= Figurita("Nahuel Molina", "Defensor",91, 198, 70, 24);
        Figurita figurita92= Figurita("Nicolas Otamendi", "Defensor",92, 183, 81, 34);
        Figurita figurita93= Figurita("Cristian Romero", "Defensor",93, 188, 79, 24);
        Figurita figurita94= Figurita("Rodrigo De Paul", "Mediocampista",94, 180, 70, 28);
        Figurita figurita95= Figurita("Angel Di Maria", "Delantero",95, 180, 75, 34);
        Figurita figurita96= Figurita("Giovani Lo Celso", "Mediocampista",96, 177, 76, 26);
        Figurita figurita97= Figurita("Leandro Paredes", "Mediocampista",97, 180, 75, 28);
        Figurita figurita98= Figurita("Lautaro Martinez", "Delantero",98, 174, 72, 24);
        Figurita figurita99= Figurita("Lionel Messi", "Delantero",99, 170, 72, 35);
        Figurita figurita100= Figurita("Mohamed Al-Owais", "Portero",100, 185, 70, 30);
        Figurita figurita101= Figurita("Abdulelah Al-Amari", "Defensor",101, 185, 74, 25);
        Figurita figurita102= Figurita("Sultan Al-Ghannam", "Defensor",102, 173, 67, 28);
        Figurita figurita103= Figurita("Yasser Al-Shahrani", "Defensor",103, 171, 62, 30);
        Figurita figurita104= Figurita("Hassan Al-Tambakti", "Defensor",104, 182, 69, 23);
        Figurita figurita105= Figurita("Abdullah Madu", "Defensor",105, 187, 77, 29);
        Figurita figurita106= Figurita("Salman Al-Faraj", "Mediocampista",106, 179, 78, 33);
        Figurita figurita107= Figurita("Abdulelah Al-Malki", "Mediocampista",107, 176, 67, 27);
        Figurita figurita108= Figurita("Mohamed Kanno", "Mediocampista",108, 191, 73, 28);
        Figurita figurita109= Figurita("Samed Al-Dawsari", "Delantero",109, 171, 72, 31);
        Figurita figurita110= Figurita("Khalid Al-Ghannam", "Delantero",110, 171, 80, 21);
        Figurita figurita111= Figurita("Guillermo Ochoa", "Portero",111, 185, 85, 37);
        Figurita figurita112= Figurita("Nestor Araujo", "Defensor",112, 188, 87, 31);
        Figurita figurita113= Figurita("Jesus Gallardo", "Defensor",113, 176, 68, 28);
        Figurita figurita114= Figurita("Cesar Montes", "Defensor",114, 191, 70, 25);
        Figurita figurita115= Figurita("Jorge Sanchez", "Defensor",115, 175, 70, 24);
        Figurita figurita116= Figurita("Edson Alvarez", "Defensor",116, 187, 72, 24);
        Figurita figurita117= Figurita("Jesus Manuel Corona", "Mediocampista",117, 174, 65, 29);
        Figurita figurita118= Figurita("Hector Herrera", "Mediocampista",118, 183, 80, 32);
        Figurita figurita119= Figurita("Carlos Rodriguez", "Mediocampista",119, 171, 88, 32);
        Figurita figurita120= Figurita("Raul Jimenez", "Delantero",120, 190, 76, 31);
        Figurita figurita121= Figurita("Hirving Lozano", "Delantero",121, 175, 70, 27);
        Figurita figurita122= Figurita("Wojciech Szczensy", "Portero",122, 192, 96, 32);
        Figurita figurita123= Figurita("Jan Bednarek", "Defensor",123, 190, 77, 26);
        Figurita figurita124= Figurita("Bartosz Bereszynski", "Defensor",124, 183, 73, 30);
        Figurita figurita125= Figurita("Matty Cash", "Defensor",125, 185, 69, 25);
        Figurita figurita126= Figurita("Kamil Glik", "Defensor",126, 190, 80, 34);
        Figurita figurita127= Figurita("Kamil Jozwiak", "Mediocampista",127, 176, 70, 24);
        Figurita figurita128= Figurita("Grzgrorz Crychowiak", "Mediocampista",128, 186, 80, 33);
        Figurita figurita129= Figurita("Jakub Moder","Mediocampista",129, 190, 78, 23);
        Figurita figurita130= Figurita("Piotr Zielinski", "Mediocampista",130, 178, 64, 28);
        Figurita figurita131= Figurita("Robert Lewandowski", "Delantero",131, 185, 81, 34);
        Figurita figurita132= Figurita("Arkadiusz Milik", "Delantero",132, 186, 67, 28);
        Figurita figurita133= Figurita("Hugo Lloris", "Portero",133, 188, 80, 35);
        Figurita figurita134= Figurita("Theo Hernandez", "Defensor",134, 184, 82, 24);
        Figurita figurita135= Figurita("Presnel Kimpempe", "Defensor",135, 183, 77, 27);
        Figurita figurita136= Figurita("Jules Kounde", "Defensor",136, 180, 70, 23);
        Figurita figurita137= Figurita("Raphael Varane", "Defensor",137, 191, 81, 29);
        Figurita figurita138= Figurita("Ngolo Kante", "Mediocampista",138, 168, 70, 31);





        // se me ocurrio hacer un array que contenga las figuritas de cada usuario. Para eso tengo que crear
        // arrays y mappearlos a las addresses de cada persona. Entonces cada vez que alguien consigue una 
        //figurita, se suma a su array y cuando la tiene 2 veces, la puede vender. 

        mapping(address => Figurita[]) arrayAlbum;


        //arrayAlbum(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4) = [figurita1, figurita2];

        //arrayAlbum[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = [figurita3, figurita2, figurita4];


        }
        


        
