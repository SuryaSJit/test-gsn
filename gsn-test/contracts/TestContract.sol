//SPDX-License-Identifier: MIT
pragma solidity 0.6.6;
import "@opengsn/contracts/src/BaseRelayRecipient";


contract TestContract is  BaseRelayRecipient {
    constructor(address forwarder) {
        trustedForwarder = forwarder;

    string public quote;
    address public owner;

    function setQuote(string memory newQuote) public {
        quote = newQuote;
        owner = _msgSender();
    }

    function getQuote() view public returns(string memory currentQuote, address currentOwner) {
        currentQuote = quote;
        currentOwner = owner;
    }
}