# remix
```
在线创建、编译、部署、调试智能合约
https://remix.ethereum.org/
```
# Solidity数据类型 布尔 数字 地址
  1. 布尔值
     true false
     && || !
  2. 整型
     uint 无符号整形 只能表示证书
     init 和js里的number类似
     + - * / > < <= 都支持
  3. 地址 address
     以太坊的地址  20个字节
     0xa667B28E93F7b3596d0fCA9CDa50515A2d47dB2F
     0x0000000000000000000000000000000000000000 （0x表示16禁止  长度40）
     1.合约里面全局变量 msg.sender 部署合约的地址
     2.地址有很多方法，blance查看余额 transfer 转账
  4. 字符串
     string name = 'lemon'
  5. 数组
     unit [5] arr=[1,2,3,4,5]
  6. map
     所谓的map 跟js对象是一个东西
     {
        name:'lemon',
        age:18
     }
   7. 结构体 struct
   8. 枚举类型 enum