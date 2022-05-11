public class BestAprochTriggerHandler {
    public static void beforeInsert(List<Contact> conList){
        
        Map<Id,Account> accMap = new Map<Id,Account>();
        Set<Id> accountIds = new Set<Id>();
        for(Contact conRecord : conList){
            accountIds.add(conRecord.AccountId);
        }
        for(Account accountRecord : [Select id,Salary__c from Account where id In : accountIds]){
            accMap.put(accountRecord.id,accountRecord);
            
        }
        for(Contact conRecord1 : conList){
            if(conRecord1.AccountId != null && accMap.containskey(conRecord1.AccountId)){ 
                Account accountRecord = accMap.get(conRecord1.AccountId);
                if(accountRecord.Salary__c == 0 || accountRecord.Salary__c== null){
                    
                    conRecord1.addError('The Salary should be greater than 0 in selected Account.'); 
                }
            }
        }
    }
    
}