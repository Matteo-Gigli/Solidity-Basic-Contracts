//SPDX-License-Identifier:UNLICENSED

// This Contract is the simplest contract we can have.
// It's based on set a number and call it back

pragma solidity >0.5.0 <0.9.0;

contract myContract{

    uint private number;

    function setIt(uint _number)public{
        number = _number;
    }

    function getIt()public view returns(uint){
        return number;
    }
}