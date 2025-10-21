// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Presale {
    address public owner;
    uint256 public constant maxSupply = 21000000 * (10 ** 18);
    uint256 public totalSold;
    uint256 public pricePerToken = 0.0001 ether;

    mapping(address => uint256) public balances;

    event Purchased(address indexed buyer, uint256 amount);
    event PriceUpdated(uint256 newPrice);

    constructor() {
        owner = msg.sender;
    }

    function buyTokens() external payable {
        require(msg.value > 0, "Send ETH to buy tokens");
        uint256 amount = msg.value / pricePerToken;
        require(totalSold + amount <= maxSupply, "Exceeds max supply");

        balances[msg.sender] += amount;
        totalSold += amount;

        emit Purchased(msg.sender, amount);
    }

    function updatePrice(uint256 newPrice) external {
        require(msg.sender == owner, "Only owner can update price");
        pricePerToken = newPrice

