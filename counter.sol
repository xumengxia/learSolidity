// 结尾必须是
// 1.版本声明
pragma solidity ^0.4.24;

// contract 关键词新建合约
contract Counter {
    // 变量必须声明类型
    uint num;
    address owner;

    constructor() public {
        num = 0;
        // msg.sender 谁部署合约这个值就是谁
        owner = msg.sender;
    }

    // 函数类型 public公用函数
    function increment() public {
        if (owner == msg.sender) {
            num += 1;
        }
    }

    // view函数 只读取变量，不写
    // 声明返回值类型
    function getNum() public view returns (uint) {
        return num;
    }
}
