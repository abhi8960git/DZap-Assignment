const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("TokenModule", (m) => {
  // ERC20 Contract Deployment
  const initialSupply = BigInt(100) * BigInt(10 ** 18); // 5 tokens with 18 decimals
  const myToken = m.contract("MyToken", [initialSupply]);

  // ERC721 Contract Deployment
  const myNFT = m.contract("MyNFT");

  return { myToken, myNFT };
});
