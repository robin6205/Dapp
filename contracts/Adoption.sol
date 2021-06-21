pragma solidity ^0.5.0;
//additional information that only the compiler cares about
contract Adoption {
    address[16] public adopters; //length 16 array of addresses
    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        //The address of the person or smart contract who called this function is denoted by msg.sender
        return petId;
    }
    
    function getAdopters() public view returns (address[16] memory) {
        //memory gives the data location for the variable.
        //view ->  the function declaration means that the function will not modify the state of the contract
        return adopters;
    }
}