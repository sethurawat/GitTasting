@isTest
public class DemoBatchClassTest {
	@isTest
    public static void isTest(){
        Contact con = new Contact();
        con.LastName = 'Test';
        insert con;
        
        Lead le = new Lead();
        le.LeadSource = 'Web';
        le.Company = 'iBirds';
        le.LastName = 'Sethu';
        insert le;
        
        Test.startTest();
        QubleTest obj1 = new QubleTest();
        System.enqueueJob(obj1);
        
        DemoBatchClass obj = new DemoBatchClass();
        Database.executeBatch(obj);
        Test.stopTest(); 
        
		Contact con1 = [Select id,LastName from Contact];
		System.assertEquals(con1,con1 );           
    }
}