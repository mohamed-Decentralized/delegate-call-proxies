// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract DeployFirst {
    string public someValue;

    function setValue(string memory _newVal) public payable {
        someValue = _newVal;
    }
}

contract DeploySecond {
  string public someDifferentValue;

    function setVars(address _contract, string memory _newVal) public payable {
        (bool success,) = _contract.delegatecall(abi.encodeWithSignature("setValue(string)", _newVal));
        if (!success) {
            revert("delegatecall failed");
        }
    }
}