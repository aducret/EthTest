pragma solidity ^0.4.18;

contract RankingProblem {
    
    function generateNewProblem(uint participants, uint seed) public;
    function getEntranceFee() public view returns (uint fee);
    function checkSolution(bytes posibleSolution) public view returns (bool isSolution);
    function getProblemData() public view returns (bytes problemData);
    
}

contract ETHBuenosAiresTrivialProblem is RankingProblem {
    uint problem;

    function getProblemNumber() external view returns (uint problemNumber) {
        return problem;
    }

    function comparebytess (bytes a, bytes b) private pure returns (bool comparison){
        return keccak256(a) == keccak256(b);
    }

    function checkSolution(bytes posibleSolution) public view returns (bool) {
        return comparebytess(posibleSolution, "A");
    }

    function getProblemData() public view returns (bytes data) {
        return "A";
    }

    function generateNewProblem(uint participants, uint seed) public {
        problem++;
        // participants = participants;
        // seed = seed;
    }

    function getEntranceFee() public view returns (uint fee) {
        return 0;
    }

}
