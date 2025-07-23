// comment:this is my first small contract
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 第一章数据结构
contract HelloWorld {
    // bool
    // bool bollVar_1 = true;
    // bool bollVar_2 = false;

    // uint 无符号 整数 
    // uint8 0-255 // 0-2^8-1;
    // uint8 uintVar = 255;
    // uint256 0-2^256-1;

    // int256 负整数
    // int256 intVar = -1 ;

    // bytes32 字节最大32 存储字符串
    // bytes32 bytesVar = "Hello World";
    // string stringVar = "Hello World";

    // address 地址
    // address addressvar = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // struct 结构体 相当于ts定义对象属性结构 interface
    struct Info {
        string phrase;
        uint256 id;
        address addr;
    
    }
    // array 数组
    // Info[] infos; // 数组

    // mapping 映射 相当于object {key:value}
    mapping(uint256 id =>Info info) infoMapping;

    string strVal = "Hello World";

    // 可见度 函数变量 
    // internal 内部合约子合约都可以调用
    // external 相反跟上面 可以让外面访问不可以自己访问
    // public 外部函数调用 
    // private 自己用
    // view 纯读取   pure纯运算

    // 读取
    function sayHello(uint256 _id) public view returns(string memory){
      // return addInfo(strVal);
      // 数组 -------------------------------------------------
      //   for(uint256 i = 0; i < infos.length; i++) {
      //      if(infos[i].id == _id) {
      //          return addInfo(infos[i].phrase);
      //      }
      //   }
      //   return addInfo(strVal);
      // 数组 -------------------------------------------------  end

      // 映射 -------------------------------------------------
      if(infoMapping[_id].addr == address(0x0)) {
        return addInfo(strVal);
      } else {
        return addInfo(infoMapping[_id].phrase);
      }
      // 映射 -------------------------------------------------  end
     
    }

    // 设置
    function setHelloWorld(string memory newStrVal, uint256 _id) public {
        // strVal = newStrVal;
        // 合约类型大写字母变量小写字母

        // 数组形式数据量大，循环起来消耗性能
        Info memory info = Info(newStrVal, _id, msg.sender);
        // infos.push(info);

        // 映射
        infoMapping[_id] = info;
        
    }

    // 修改
    function addInfo (string memory helloWorldStr) internal pure returns (string memory){
        return string.concat(helloWorldStr, "from Frank's contract.");
    }
    
    
    // 存储
    // 1. storage 永久存储
    // 2. memory 暂时存储 入参运行时可以修改 变量 variable
    // 3. calldata 暂时存储 入参没有办法修改 常量 constant
    // 4. stack 不常用
    // 5. codes 不常用
    // 6. logs 不常用

}