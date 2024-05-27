// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ARGANDA_Token {
    // Public variables to store token details
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply;

    // Mapping from addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and balance of the sender
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to decrease total supply and balance of the sender
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Balance is not sufficient to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
