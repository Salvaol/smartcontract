pragma solidity ^0.5.0;
  contract TransactionStorage {
      
     uint TransactionCount; 
      
     struct Transaction {
        //address secAddress;
        uint TimeStamp;
        uint Identification;
        uint ProjectId;
    }
    
    mapping(uint => Transaction) public Transactions;
    
     constructor() public {
        TransactionCount = 0;
    }
    
    function settransactions(uint TimeStamp, uint Identification, uint projectId) public {
      Transactions[TransactionCount].TimeStamp=TimeStamp; 
      Transactions[TransactionCount].Identification=Identification;  
      Transactions[TransactionCount].ProjectId=projectId;  
      TransactionCount++;
      
    }

    function getTimeStamp() view public returns (uint) {
        require(TransactionCount>0);
      return Transactions[TransactionCount-1].TimeStamp;
    }
     function getIdentification() view public returns (uint) {
        require(TransactionCount>0);
      return Transactions[TransactionCount-1].Identification;
    }
     function getProjectId() view public returns (uint) {
        require(TransactionCount>0);
      return Transactions[TransactionCount-1].ProjectId;
    }
    
  }
