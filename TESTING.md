# MyDataContract — Functional Testing

## Project Overview

This project demonstrates Solidity contract ownership, access control and permission-based function execution.

## Tests Performed

| Test | Expected Behaviour | Result |
|---|---|---|
| Initial ownership | Deploying account becomes owner | PASS |
| Ownership transfer | Current owner transfers ownership | PASS |
| New owner access | New owner can update the contract name | PASS |
| Previous owner access | Previous owner cannot perform owner-only updates | PASS |
| Zero-address protection | Ownership transfer to zero address is rejected | PASS |

## Functionality Tested

- Contract ownership through `owner`
- Access control using the `onlyOwner` modifier
- Ownership transfer
- Protected state-changing functions
- Zero-address validation

## Testing Scope

These tests verify the specified contract behaviours. They are functional tests, not a comprehensive security audit.

The project has not undergone an independent professional security review.

## Project Status

Educational Solidity project built and tested using Remix IDE.