// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.1;

contract Transfer{

   uint256 weiRecieved;
   address admin;

   constructor(){
       admin = msg.sender;
   }

   function deposit() external payable{
       require(msg.value > 2000000000000000000, "INVALID_AMOUNT");
       weiRecieved += msg.value;
   }

   function getBalance() external  view  returns(uint256){
       return address(this).balance;
   }
   
   function send( address payable _receiver ) external {
      require(address(this).balance > 1 ether , "SORRY_WE_DONT_HAVE_MONEY_AGAIN_GO_AND_HUSTLE");
      _receiver.transfer(1 ether);
      weiRecieved -= 1 ether;
   }

  function withdraw(address payable _receiver) external {
    require(msg.sender == admin , "NOT_APPROVED");
    _receiver.transfer(address(this).balance);
  }
  

}