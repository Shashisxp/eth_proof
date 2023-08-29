# MyToken
This Solidity program functions as a token contract enabling the creation and destruction of tokens. It stands as a fundamental illustration aimed at comprehending the operational aspects of token contracts through the utilization of the Solidity programming language.

# Requirements
1.The contract will possess publicly accessible variables for storing token particulars, including the Token Name, Token Abbreviation, and Total Supply.

2.Employing a mapping structure, the contract will keep track of token balances through associations between addresses and corresponding uint256 values.

3.A "mint" operation shall be integrated into the contract, requiring two inputs: an address and a value. This function's purpose is to augment the overall supply by the given value and augment the sender's address balance by the same amount.

4.Within the contract, a "burn" mechanism will be established, operating in contrast to the "mint" operation. This mechanism will involve an address and a value as inputs, with the outcome being a deduction of the value from the total supply and a reduction of the same value from the sender's address balance.

5.Special attention will be given to the "burn" operation to incorporate conditional checks. These checks will verify that the sender's balance surpasses or equates the designated amount intended for burning.

# Getting Started
Prerequisites
To compile and engage with this contract, the following prerequisites are necessary:

Solidity compiler (version 0.8.18)
Ethereum development environment (such as Remix, Truffle, Hardhat)

# Compilation
1.Copy the code from the code block below:

# Code


// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken {
    

    string public name_of_token = "shiba_inu"; 
    string public token_short = "SHIB"; 
    uint256 public Supply_total = 0;

   

    mapping(address => uint256) public tot_amount;

    

    function mint(address Address, uint256 amount) public payable  {
        Supply_total += amount; 
        tot_amount[Address] += amount; 
    }

  
    function burn(address Address, uint256 amount) public payable {
        
        if (tot_amount[Address] >= amount) {
            Supply_total -= amount; 
            tot_amount[Address] -= amount; 
        }
    }
}
2.Paste the code into your Solidity development environment.

# Deployment and Usage
Utilize the Solidity compiler (version 0.8.18) to compile the contract.
Deploy the compiled contract onto an Ethereum network you prefer.
Engage with the contract by employing the subsequent functions:
mint(address Address, uint256 value): Generate fresh tokens by raising the overall supply and appending the designated value to the balance of the provided address.
burn(address Address, uint256 value): Eliminate tokens by subtracting the specified value from the total supply and deducting it from the balance linked to the given address. This function involves a conditional verification to ensure the sender's balance is higher than or equal to the value being burned.
# Authors

Bala Shashi
balapadma60740@gmail.com
