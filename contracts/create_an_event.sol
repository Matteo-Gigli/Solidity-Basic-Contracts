//SPDX-License-Identifier:UNLICENSED

/* Event Contract
We are creating a contract and then we want emit an Event.
We can create an Event by the key-word event, and give all the parameter we
want.
To call an event we can use emit, passing the same parmater the event want.
Check the Contract !
*/

pragma solidity >0.5.0 <0.9.0;

contract myContract{
    event sayHello(address _user, string);

    function sayHi()public{
        emit sayHello(msg.sender, 'Hey Happy Coding');
    }


}
