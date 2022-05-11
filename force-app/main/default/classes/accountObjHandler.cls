public class accountObjHandler {
    public static void accountFieldUpdate(List<Account> accountList){
        for(Account acc : accountList){
            if(acc.Hello__c != null){
                acc.Hello__c = 'World';
            }
        }
        
    }

}