# Functions
# ETH : Rubric assessment
This Solidity program is a simple program that demonstrates how to run 3 different functionalities of the Solidity programming language which are REQUIRE() , ASSERT() , REVERT() and if not followed the condition how it shows error and saves us Gas.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FUNCTIONS.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract functionscontract {
    uint public value;
    function setValue(uint _value) public {
        require(_value>0 , "Value must be greater than 0.");
        assert(_value != value);
        value = _value;
    }
    function performDiv( uint _num , uint _deno) public pure returns (uint) {
        require(_deno != 0 , "Cannot divide by zero. ");
        if (_num % _deno != 0){
            revert("Numerator must be divisible by denominator. ");
        }
        return _num/_deno;
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile FUNCTION.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "FUNCTION" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by entering the value as 0 , -1 or 1 and see what kind of results you get. You can even set the value of numerator and denominator and also check what happens when you divide the numerator by 0 .  
