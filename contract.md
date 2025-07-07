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