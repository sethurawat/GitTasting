trigger AccountDuplicateCheckTrigger on Account (before insert) {
    Set<String> nameSet = new Set<String>();
    for(Account accRecord : trigger.new){
       nameSet.add(accRecord.Name); 
    }
    List<Account> accountRecordList = new List<Account>();
    accountRecordList = [Select id,Name from Account where Name In :nameSet];
    for(Account acc : trigger.new){
        if(accountRecordList.size() > 0){
            acc.addError('Account already exists in your Organization with name '+acc.Name);
        } 
    }
}