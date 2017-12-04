pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Vitalik is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Vitalik(address _owner)  UpgradeableToken(_owner) {
    name = "Vitalik";
    symbol = "vit";
    totalSupply = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    decimals = 100;

    balances[_owner] = totalSupply;
  }
}