//SPDX-License-Identifier:UNLICENSED

/* This Contract will show us the use of keccak256 in our Smart Contract

Keccak256 is a cryptographic hash and have some Key Point:

- Deterministic
- Fast To Calculate
- Not Reversible
- Collision Resistant
- Little changes create Big changes

To call this function we have to pass some bytes, for this reason we have an helper call abi.encodePacked()
This abi.encodePacked() can receive all the type(string, uint, address ...) and convert it to bytes.
Check the contract to have a complete view of how keccak256 works.
*/

pragma solidity >0.5.0 <0.9.0;

contract myContract{

    bytes32 private text;

    function setText(string memory _text)public returns(bytes32){
        text = keccak256(abi.encodePacked(_text));
        return text;
    }

    function getBytes()public view returns(bytes32){
        return text;
    }
}
/* Once you deployed, try to set a text like 'Hello' and get the bytes, than
write 'hello' and get the bytes again. Check the difference just changing a
letter.
*/
