@isTest
public class ReleteContactCountHandelerTest {
    @isTest
    public static void doTest(){
        Account accRecord = new Account();
        accRecord.Name = 'Test';
        accRecord.ContactCount__c = 0;
        insert accRecord;
        
        list<contact> lstcon = new list<Contact>();
        Contact conRecord = new Contact();
        conRecord.LastName = 'my';
        conRecord.AccountId = accRecord.Id;
        lstcon.add(conRecord);
        
        Contact objcon2 = new Contact();
        objcon2.LastName = 'my';
        objcon2.Accountid = accRecord.id ;
        lstcon.add(objcon2);
        
        insert lstcon;
        update lstcon;
        Delete conRecord;
        
        
   
    }
}