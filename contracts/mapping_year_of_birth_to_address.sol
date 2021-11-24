//SPDX-License-Identifier:UNLICENSED

/* This Contract is based on, set a number and get it back, but this time,
we want to associate the address of sender to the number.
*/

pragma solidity >0.5.0 <0.9.0;

contract myContract{

    mapping (address => uint256) private yearOfBirth ;

    function setIt(uint _number)public{
        yearOfBirth[msg.sender] = _number;
    }

    function getIt(address _user)public view returns(uint){
        return yearOfBirth[_user];
    }
}
