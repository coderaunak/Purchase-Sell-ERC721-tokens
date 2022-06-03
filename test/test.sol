pragma solidity >=0.4.21 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Rcoin.sol";

contract Rcoin {
    function testInitialBalanceUsingDeployedContract() public {
        Rcoin rcoin = Rcoin(DeployedAddresses.Rcoin());

        uint expected = 10000;

        Assert.equal(
            rcoin.getBalance(msg.sender),
            expected,
            "Owner should have 10000 Rcoin initially"
        );
    }

    function testInitialBalanceWithNewRCoin() public {
        Rcoin rcoin = new Rcoin();

        uint expected = 10000;

        Assert.equal(
            rcoin.getBalance(address(this)),
            expected,
            "Owner should have 10000 Rcoin initially"
        );
    }
}
