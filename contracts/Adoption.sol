pragma solidity ^0.5.0;

contract Adoption{
	 address[16] public adopters;
	

	 function adopt(uint petid) public returns(uint){
	 require(petid>=0 && petid<16);
	 
	 adopters[petid]=msg.sender;
	 return petid;

	 }
	 function getadopters() public returns(address[16] memory){
	 return adopters;

	 }

}
