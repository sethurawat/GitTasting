trigger DemoTrigger on Account (before insert,before update) {
    List<Account> accountListRecords = new List<Account>();
   accountListRecords =  [Select id,Name from Account];
    Map<String,Account> mapStringToAccount = new Map<String,Account>();
    for(Account acc : accountListRecords){
        mapStringToAccount.put(acc.Name,acc);
    }
    for(Account acc : Trigger.new)
        if(mapStringToAccount.get(acc.Name)!= null){
            acc.addError('Name already exists');
        }
}