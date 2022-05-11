@isTest
public class DemoTriggerAccountDuplicateNameTest {
	@isTest
    public static void doTest(){
        Boolean result =false;
        Account acc = new Account();
        acc.Name = 'Test';
        insert acc;
      
        try{
      Account acc1=new account();
      acc1.Name= 'Smriti';
      insert acc1;
      }
      catch(DMLException ex)
      {
      result=true;
      system.assert(result);
      }
    }
}