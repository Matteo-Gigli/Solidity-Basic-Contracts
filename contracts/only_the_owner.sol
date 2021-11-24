//SPDX-License-Identifier:UNLICENSED

/* This Contract is based on set a number and get it back, and associate the
address of sender to the number.
This time we will use a modifier for show the result only for the address
associate.
If i set a date of birth for my account no one can see my year of birth
except me.
*/

pragma solidity >0.5.0 <0.9.0;

contract myContract{

    mapping(address => uint256) private YearOfBirth;
    address private owner;

    function setIt(uint _number)public{
        owner = msg.sender;
        YearOfBirth[msg.sender] = _number;
    }

    modifier OnlyOwner(){
        require(msg.sender == owner, 'Cannot tell you...is a secret');
        _;
    }

    function getIt(address _user)public OnlyOwner view returns(uint){
        return YearOfBirth[_user];
    }
}