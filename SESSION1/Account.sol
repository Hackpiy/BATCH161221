// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.1;

contract Account{

   uint256 public balance;
   uint256 public savings; //assignment

   constructor(uint256 _balance) nonZeroValue(_balance){
      balance = _balance;
   }

   /*
   @dev This function adds to the balance
   **/
   function deposit(uint256 _amount) external nonZeroValue(_amount) {
       balance += _amount;
   }

   /*
   @dev This function deducts from the amount 
   */
   function withdraw(uint256 _amount) external nonZeroValue(_amount)  {
       require(_amount <= balance , "INSUFFICIENT_BALANCE");
       balance -= _amount;
   }


  
  //assignment
   function save(uint256 _principal) external {

   }


 //assignment
   function withdrawSavings(uint256 _amount) external {

   }

   modifier nonZeroValue(uint256 _amount){
       require(_amount > 0 , "INVALID_AMOUNT");
       _;
   }


}