//SPDX-License-Identifier:GPL-3.0 

pragma solidity  >=0.5.0 <0.9.0;


contract Deposit {
    address public onwner;
    constructor(){
        onwner = msg.sender;
    }
    
    receive() external payable{
        
    }
    
    fallback() external payable {
        
    }
    
    function getBalance () public view returns(uint){
        return address(this).balance;
    }
    
    function getChainOrigin () public view returns(address){
        return tx.origin;
    }
    
    function sendEther () public payable {
        
    }
    
    function transferEther(address payable recipient, uint amount) public returns (bool){
        require(onwner == msg.sender,'Access denied');
        if(amount <= getBalance()){
            recipient.transfer(amount);
            return true;
        }else{
            return false;
        }
    }
}

