public class ContactCountTriggerHelper {
	public static void countContacts(List<Contact> newContact, Boolean isAddCount){
        Set<Id> setAccountIds = new Set<Id>();
        Map<Id , Decimal> contactCountByAccountId = New Map<Id , Decimal>();
        List<Account> accountUpdateList = New List<Account>();
        for(Contact conRecord : newContact){
            setAccountIds.add(conRecord.AccountId);
        }
        /*for(Account accountRecord : [Select Id, ContactCount__c From Account Where Id In :setAccountIds]){
            if(accountRecord.ContactCount__c != null){
                contactCountByAccountId.put(accountRecord.Id, accountRecord.ContactCount__c); 
            }else{
                contactCountByAccountId.put(accountRecord.Id, 0);
            }
        }*/
       /* for(Id accId : contactCountByAccountId.keySet()){
            Account accObj = New Account();
            accObj.Id = accId;
            accObj.ContactCount__c = contactCountByAccountId.get(accId); 
            if(isAddCount){
                accObj.ContactCount__c += 1;
            }else{
                accObj.ContactCount__c -= 1;
            }
            accountUpdateList.add(accObj);
        }*/
        if(accountUpdateList.size() > 0){
            update accountUpdateList;
        }
    }
}