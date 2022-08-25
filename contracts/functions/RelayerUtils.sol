// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

function _encodeRelayerContext(
    bytes calldata _fnArgs,
    address _feeCollector,
    address _feeToken,
    uint256 _fee
) pure returns (bytes memory) {
    return abi.encode(_fnArgs, _feeCollector, _feeToken, _fee);
}

function _encodeRelayerContextERC2771(
    bytes calldata _fnArgs,
    address _feeCollector,
    address _feeToken,
    uint256 _fee,
    address _sender
) pure returns (bytes memory) {
    return abi.encode(_fnArgs, _feeCollector, _feeToken, _fee, _sender);
}
