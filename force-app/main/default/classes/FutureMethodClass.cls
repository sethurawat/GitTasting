public class FutureMethodClass {
//@Future
    public static void createContact(set<Id> accountIds){
     List<Contact> conList = [Select id,FirstName,LastName FROM Contact Where AccountId =:accountIds];       
        FOR(Contact conRecord : conList){
            System.debug('conRecord'+conRecord);
        }
    }
    
    @Future
     public static void updateContact(){
        
    }
}