@isTest
public class ContactTriggerTest {
	@isTest
    public static void doTest(){
        // Account record insert
        Account accRecord = new Account();
        accRecord.Name = 'Test';
        insert accRecord;
        
        // First Price_Master__c record insert
        Price_Master__c priceMasterRecord = new Price_Master__c();
        priceMasterRecord.Name = 'Test';
        priceMasterRecord.Amount__c = 12;
        priceMasterRecord.Account__c = accRecord.Id;
        insert priceMasterRecord;
        // First Price_Master__c record insert
        Price_Master__c priceMasterRecord2 = new Price_Master__c();
        priceMasterRecord2.Name = 'Test';
        priceMasterRecord2.Amount__c = 13;
        priceMasterRecord2.Account__c = accRecord.Id;
        insert priceMasterRecord2;
        
        Test.startTest();
        // Contact record insert
        Contact conRecord = new Contact();
        conRecord.AccountId =accRecord.Id;
        conRecord.LastName = 'Sethu';
        insert conRecord;
        Test.stopTest();
        conRecord = [Select Id,Amount__c From Contact Where Id=:conRecord.Id];
        system.assertEquals(conRecord.Amount__c,13);
    }
}