public class RelatedContactHandler {
    public static void handleAfterInsert(List<Account> newAccount){
        List<Contact> conList = new List<Contact>();
        for(Account acc : newAccount){
            conList.add(new Contact(LastName=acc.Name+'1', AccountId=acc.Id));
            conList.add(new Contact(LastName=acc.Name+'2', AccountId=acc.Id));
            conList.add(new Contact(LastName=acc.Name+'3', AccountId=acc.Id));
            conList.add(new Contact(LastName=acc.Name+'4', AccountId=acc.Id));
            conList.add(new Contact(LastName=acc.Name+'5', AccountId=acc.Id));
        }
        if(conlist.size() > 0)
            insert conlist;
    }
}