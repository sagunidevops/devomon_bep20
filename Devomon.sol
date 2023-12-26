// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
/**                                                                                                                                         
DDDDDDDDDDDDD                                                                                                                             
D::::::::::::DDD                                                                                                                          
D:::::::::::::::DD                                                                                                                        
DDD:::::DDDDD:::::D                                                                                                                       
  D:::::D    D:::::D     eeeeeeeeeeee  vvvvvvv           vvvvvvv ooooooooooo      mmmmmmm    mmmmmmm      ooooooooooo   nnnn  nnnnnnnn    
  D:::::D     D:::::D  ee::::::::::::ee v:::::v         v:::::voo:::::::::::oo  mm:::::::m  m:::::::mm  oo:::::::::::oo n:::nn::::::::nn  
  D:::::D     D:::::D e::::::eeeee:::::eev:::::v       v:::::vo:::::::::::::::om::::::::::mm::::::::::mo:::::::::::::::on::::::::::::::nn 
  D:::::D     D:::::De::::::e     e:::::e v:::::v     v:::::v o:::::ooooo:::::om::::::::::::::::::::::mo:::::ooooo:::::onn:::::::::::::::n
  D:::::D     D:::::De:::::::eeeee::::::e  v:::::v   v:::::v  o::::o     o::::om:::::mmm::::::mmm:::::mo::::o     o::::o  n:::::nnnn:::::n
  D:::::D     D:::::De:::::::::::::::::e    v:::::v v:::::v   o::::o     o::::om::::m   m::::m   m::::mo::::o     o::::o  n::::n    n::::n
  D:::::D     D:::::De::::::eeeeeeeeeee      v:::::v:::::v    o::::o     o::::om::::m   m::::m   m::::mo::::o     o::::o  n::::n    n::::n
  D:::::D    D:::::D e:::::::e                v:::::::::v     o::::o     o::::om::::m   m::::m   m::::mo::::o     o::::o  n::::n    n::::n
DDD:::::DDDDD:::::D  e::::::::e                v:::::::v      o:::::ooooo:::::om::::m   m::::m   m::::mo:::::ooooo:::::o  n::::n    n::::n
D:::::::::::::::DD    e::::::::eeeeeeee         v:::::v       o:::::::::::::::om::::m   m::::m   m::::mo:::::::::::::::o  n::::n    n::::n
D::::::::::::DDD       ee:::::::::::::e          v:::v         oo:::::::::::oo m::::m   m::::m   m::::m oo:::::::::::oo   n::::n    n::::n
DDDDDDDDDDDDD            eeeeeeeeeeeeee           vvv            ooooooooooo   mmmmmm   mmmmmm   mmmmmm   ooooooooooo     nnnnnn    nnnnnn
============================================================================================================================================
*/    

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Devomon is ERC20, ERC20Burnable, Ownable {

    constructor(
        address _seedSaleWallet, 
        address _privateSaleWallet,
        address _publicSaleWallet,
        address _teamWallet,
        address _stakingWallet,
        address _gameWallet,
        address _treasuryWallet,
        address _advisorsWallet,
        address _initialOwner
    ) ERC20("Devomon", "EVO") Ownable(_initialOwner)
    
    {
        _mint(_seedSaleWallet, 300000000 ether);
        _mint(_privateSaleWallet, 400000000 ether);
        _mint(_publicSaleWallet, 500000000 ether);
        _mint(_teamWallet, 400000000 ether);
        _mint(_stakingWallet, 720000000 ether);
        _mint(_gameWallet, 600000000 ether);
        _mint(_treasuryWallet, 800000000 ether);
        _mint(_advisorsWallet, 280000000 ether);
    }
}

