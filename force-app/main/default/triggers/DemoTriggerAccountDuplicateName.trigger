trigger DemoTriggerAccountDuplicateName on Account (before insert) {
    List<Account> accountList = new List<Account>([Select id,Name from Account]);
    Map<String,Account> accMap = new Map<String,Account>();
    for(Account acc : accountList){
        accMap.put(acc.Name,acc);
    }
    for(Account accRecord : Trigger.new){
        if(accMap.containsKey(accRecord.Name)){
            accRecord.addError('Name already exists');
        }
    }
}