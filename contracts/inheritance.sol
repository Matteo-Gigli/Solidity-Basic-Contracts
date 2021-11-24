//SPDX-License-Identifier:UNLICENSED

/* Inheritance from two contract.
Inheritance is fantastic for a developer, as it guarantees the division of the code into several parts,
resulting in a much more readable code.
When we use inheritance all functions of a contract are transferred to the inheriting contract, and we can use it.
Should be a little mess, so just have a look to the examples.
*/

pragma solidity >0.5.0 <0.9.0;

contract myContract{

    mapping(address => uint256)private YearOfBirth;
    address private owner;

    function setIt(uint _number)public{
        owner = msg.sender;
        YearOfBirth[msg.sender] = _number;
    }

    function getIt(address _user)public view returns(uint){
        return YearOfBirth[_user];
    }
}

contract inher is myContract{

    function adding(uint _number, uint _number2)public pure returns(uint){
        uint result = _number + _number2;
        return result;
    }
}

// In this way if we will deploy inher contract,we will be able to use all the functions from myContract.