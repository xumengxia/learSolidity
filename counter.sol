// 结尾必须是
// 1.版本声明
pragma solidity ^0.4.24;

// contract 关键词新建合约
contract Counter {
    // 变量必须声明类型
    uint num;
    address owner; // address 地址
    string name; // string字符串
    uint[5] arr; // 数组
    mapping(address => uint) users; // map

    constructor() public {
        // 数组 ------------------------------------------------
        arr[0] = 1;
        // 固定长度数组不能使用push方法
        // arr.push(6); // 错误，已移除
        for (uint i = 0; i < arr.length; i++) {
            arr[i] = i + 1;
        }
        // 数组 ------------------------------------------------ end

        // map ------------------------------------------------
        users[msg.sender] = 100;
        // 所谓代币 就是映射里自己存储的值
        users[msg.sender] += 100;
        // map ------------------------------------------------ end

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
