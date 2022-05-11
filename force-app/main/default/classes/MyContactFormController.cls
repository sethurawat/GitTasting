public class MyContactFormController {	
    @auraEnabled 
    public static String createAccountWithContacts(Account accObj, Contact firstContactRecord, Contact secondContactRecord){
        insert accObj;
        firstContactRecord.AccountId = accObj.Id;
        insert firstContactRecord;
        secondContactRecord.AccountId = accObj.Id;
        insert secondContactRecord;
        return accObj.Id;
    }
    
    
    
}