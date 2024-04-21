# SmallProxy Contract

This contract is a proxy contract that delegates calls to an implementation contract.

## Implementation

The contract uses the `_IMPLEMENTATION_SLOT` to store the address of the implementation contract. The `setImplementation` function is used to update the implementation contract address.

## Functions

- `setImplementation(address newImplementation)`: Sets the address of the new implementation contract.
- `_implementation()`: Returns the address of the current implementation contract.
- `getDataToTransact(uint256 numberToUpdate)`: Returns the encoded data to call the `setValue` function of the implementation contract with the specified `numberToUpdate`.
- `readStorage()`: Reads and returns the value stored in storage slot 0.
- `readStorage1()`: Reads and returns the value stored in storage slot 1.

# ImplementationA Contract

This contract contains a single state variable `value` and a `setValue` function to update its value.

# ImplementationB Contract

This contract extends `ImplementationA` and adds another state variable `value1`. The `setValue` function in this contract updates `value1` by adding 2 to the input value.

