// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function test_Store() public {
        simpleStorage.store(42);
        assertEq(simpleStorage.retrieve(), 42);
    }

    function test_AddPerson() public {
        simpleStorage.addPerson("Ade", 7);
        assertEq(simpleStorage.nameToFavoriteNumber("Ade"), 7);
    }
}