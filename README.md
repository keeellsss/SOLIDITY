# Metacrafters Solidity
For the purpose of showing account balance and transactions, the CryptoKelly is a token contract that makes use of the Solidity programming language. This program will explain how each of the coded variables works. The CryptoKelly is going to be good for the blockchain and cryptocurrency sectors.
# Description
The CryptoKelly smart contract written with the Solidity program on the Ethereum Blockchain. The user can add and deduct transactions from accounts using this program, and the balance of amounts input and output will be presented.
# Getting Started
So to try run this program here in https://remix.ethereum.org/. in here you can run this code. Add file then paste this code that I created

    // SPDX-License-Identifier: MIT
    pragma solidity 0.8.18;

    /*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    
    2. Your contract will have a mapping of addresses to balances (address => uint)
    
    3. You will have a mint function that takes two parameters: an address and a value. 
    
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
       
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
       
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
     */

    contract ARGANDA_Token {

    // public variables here
    string public tokenName = "Cryptokelly";
    string public tokenAbbrv = "CK";
    uint public totalSupply = 0;

    // mapping variable here
    mapping (address => uint) public balances;
    // mint function
    function mint (address _address, uint _value) public {
        totalSupply += _value;
        balances [_address] += _value;    
    }
    // burn function
    function burn (address _address, uint _value) public {
        if (balances[_address] >= _value){
        totalSupply -= _value;
        balances [_address] -= _value;  
        }   
    }
}
Make a new file and give it a name. Then, copy the code from above. Then, when you paste it, paste the code that I provided. Go to the "Solidity Compiler" tab on the left sidebar, check the auto compiler box, and then click compile (+ the name of your file). Once the code is compiled, you may deploy the contract by clicking the "Deploy".

After clicking the "transact" button, paste the transaction address into the "balances section" and then click all the buttons (balances, TokenAcro, TokenName, and totalSupply) to see the results. Repeat the procedure for the "mint" section for the "burn" section, where the quantity you enter will be subtracted from the total balance.
# Author
 Kelly M. Arganda

 BSIT 
# License
 This project is licensed under the MIT License - see the LICENSE.md file for details
 
