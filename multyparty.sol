// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaymentSplitter {
    address[] public recipients = [
        0x1111111111111111111111111111111111111111,
        0x2222222222222222222222222222222222222222,
        0x3333333333333333333333333333333333333333
    ];

    uint256[] public shares = [40, 30, 30]; // Shares in percentage (must add up to 100)

    function splitPayment() public payable {
        require(msg.value > 0, "No ether sent");
        uint256 totalAmount = msg.value;

        for (uint256 i = 0; i < recipients.length; i++) {
            uint256 payment = (totalAmount * shares[i]) / 100;
            payable(recipients[i]).transfer(payment);
        }
    }

    // Fallback function to receive Ether directly
    receive() external payable {
        splitPayment();
    }
}
