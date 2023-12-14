// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import {FallBack} from "../../src/FallBack.sol";

contract FallBackUnitTest is Test {
    FallBack fallBack;
    address engrPips = makeAddr("engrPips");

    function setUp() public {
        vm.prank(engrPips);
        fallBack = new FallBack();
    }

    function testTheContractSetUpDeployerAsTheContractOwner() public {
        address owner = fallBack.owner();
        assertEq(owner, engrPips);
    }

    function testTheContributionOfOwnerIsGreaterThanZero() public {
        address owner = fallBack.owner();
        vm.prank(owner);
        uint256 ownerContribution = fallBack.getContribution();
        console.log("The owner contribution is ", ownerContribution);
        uint256 zeroBalance = 0;
        assertGt(ownerContribution, zeroBalance);
    }
}
