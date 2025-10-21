import "@nomicfoundation/hardhat-toolbox";

const config = {
  solidity: "0.8.20",
  networks: {
    fantomTestnet: {
      url: "https://rpc.testnet.fantom.network/",
      accounts: ["0x47b69819049922d4dfb74d1cdf624ea9ec815ecff27a5f0573841bfb95de764e"]
    }
  }
};

export default config;

