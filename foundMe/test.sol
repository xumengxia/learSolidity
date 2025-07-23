// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 合约的继承 is继承 ERC-20 
// public internal external 可以被继承  private 不可以被继承
// ERC20 Fungible Token 可以交换切分
// ERC721: NFT - Non-Fungible Token 不可交换通证

// virtual 虚拟方法的时候  合约前面必须有abstract 抽象  子组件继承的时候也必须有抽象abstract

abstract contract Parent {
    uint256 public a;
    uint256 private b;
    function addOne() public {
        a++;
    }

    function addTwo() public virtual {
        a = a + 2;
    } // 虚函数可写可不写逻辑 以继承那边为准

}

 abstract contract Child is Parent{
    // override 重写逻辑
    function addTwo() public override {
        a = a + 3;
    }
} 