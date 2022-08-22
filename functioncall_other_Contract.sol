// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract B {

    function callMintNFT(address _contract, address to) public payable returns(bool){
        // A's storage is set, B is not modified.
        (bool success, bytes memory data) = _contract.call(
            abi.encodeWithSignature("safeMint(address)",to)
        );

        return success;
    }
}
