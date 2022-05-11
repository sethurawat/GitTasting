public class createAcc {
 
    @AuraEnabled
    public static List<Account> createAccount(List<Account> acclist) {
        system.debug('acc'+acclist);
        insert acclist;
        return acclist;
    }
}