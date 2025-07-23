
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 工厂合约

// 1. 本地合约 相对路径引入
import { HelloWorld } from "./test.sol"; 

// 2. 直接从github上引入合约
// 3. 引入第三方包引入

contract HelloWorldFactory{
  HelloWorld hw;
  HelloWorld[] hwArr;

  function createHelloWorld() public {
    hw = new HelloWorld();
     hwArr.push(hw);
  }

  // 获取合约信息
  function getHelloWorldByIndex(uint256 _index) public view returns(HelloWorld){
    return hwArr[_index];
  }

  // 使用合约的sayHello
  function callSayHelloFormFactory(uint256 _index, uint256 _id)
    public 
    view 
    returns (string memory){
        return hwArr[_index].sayHello(_id);
    }

   // 使用合约的setHelloWorld
   function callSetHelloWorldFromFactory(uint256 _index, string memory newStrVal, uint256 _id) public {
     hwArr[_index].setHelloWorld(newStrVal,_id);
   }

}