pragma solidity ^0.4.23;

contract SimpleStore {
    address public owner;
    uint value;

    constructor() public {
        owner = msg.sender;
    }

    event NewValueSet(uint _value);

    function set(uint _value) public {
        value = _value;
        emit NewValueSet(value);
    }

    function get() public view returns (uint) {
        return value;
    }
}
