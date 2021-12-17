// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.1;

// import {Subtrater} from  "./Math.sol";
 import * as Math from  "./Math.sol";
contract Account{

   uint256 public balance;
   uint256 public savings;
   Math.Subtrater sub;

   constructor(uint256 _balance) nonZeroValue(_balance){
       sub = new Math.Subtrater();
      balance = _balance;
   }

   /*
   @dev This function adds to the balance
   **/
   function deposit(uint256 _amount) external nonZeroValue(_amount) { //Adder
       balance += _amount;
   }

   /*
   @dev This function deducts from the amount 
   */
   function withdraw(uint256 _amount) external nonZeroValue(_amount)  {
       require(_amount <= balance , "INSUFFICIENT_BALANCE");
       balance = sub.subtract(balance , _amount);
   }

   function share(uint256 _pices) external { //Divider
     
   }

   function invest(uint256 _pices) external { // Multiplier
     
   }


   function withdrawSavings(uint256 _amount) external {

   }

   modifier nonZeroValue(uint256 _amount){
       require(_amount > 0 , "INVALID_AMOUNT");
       _;
   }


}