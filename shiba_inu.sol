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

contract MyToken {
    // public variables here

    string public Token_name = "LITCOIN"; // a string variable to store my token_name
    string public Token_abbrv = "LTC"; //  another string variable to store my token_abbrv
    uint256 public Total_supply = 0; // and unint varibale which usigned int

    // mapping variable here

    mapping(address => uint256) public Tot_amount;

    // mint function

    function mint(address Address, uint256 value) public payable  {
        Total_supply += value; // adding the value of the variable value to the my Total Supply
        Tot_amount[Address] += value; // and accessing the value through the given address and using it to add the value of the total value
    }

    // burn function

    function burn(address Address, uint256 value) public payable {
        // the balance or the total amount of the sender should be greater than or equal to the amount that is supposed to be burned.

        if (Tot_amount[Address] >= value) {
            Total_supply -= value; // deducting the value of the variable value to the my Total Supply
            Tot_amount[Address] -= value; // and accessing the value through the given address and using it to subtracting the value of the total value
        }
    }
}
