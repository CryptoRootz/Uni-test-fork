const Factory = artifacts.require("Uniswapv2Factory.sol");

module.exports = async function (deployer, network, addresses) {
  await deployer.deploy(Factory, addresses[0]);
  const factory = await Factory.deployed();

  let token1Address, token2Address;
  if(network === 'mainnet') {
    token1Address = '';
    token2Address = '';
  } else {
    
  }
  await factory.createPair();
};
