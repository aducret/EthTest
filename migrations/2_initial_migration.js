var ETHBuenosAiresTrivialProblem = artifacts.require("ETHBuenosAiresTrivialProblem");
var ETHBuenosAiresRanking = artifacts.require("ETHBuenosAiresRanking");

module.exports = function(deployer) {
  deployer.deploy(ETHBuenosAiresTrivialProblem);
  deployer.deploy(ETHBuenosAiresRanking);
};