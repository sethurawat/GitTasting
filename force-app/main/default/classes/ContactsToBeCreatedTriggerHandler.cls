public class ContactsToBeCreatedTriggerHandler {
    public static void ContactsToBeCreated(List<Account> accountList){
         integer conField = 0;
        List<Contact> conRecordsToAddList = new List<Contact>();
       // Map<Id,Account> contactMap = new Map<Id,Account>();
        Set<Id> accountIds = new Set<Id>();
        for(Account accRecord : accountList){
            accountIds.add(accRecord.Id);           
        }
        Account acc = new Account();
        acc.Contacts_To_Be_Created__c =0;
       
        for(Integer i = 0; i<= conField; i++){
        
    }
           
    }
    
}