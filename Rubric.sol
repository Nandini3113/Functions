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
