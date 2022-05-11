/**
 * @author : Sethu Singh Rawat
 * @date : 30 Nov 2021
 * @description : Sum of related contacts of an account 
 */

public class ReleteContactCountHandeler {
    public static void insertCount(List<Contact> newContact){
    	Map<Id , Integer> contactCountByAccountId = New Map<Id , Integer>();
    	Set<Id> setAccountIds = new Set<Id>();        
        for(Contact conRecord : newContact){
            setAccountIds.add(conRecord.AccountId);
            system.debug('setAccountIds ** '+setAccountIds);
        }
        list<Contact> conList = [SELECT AccountId FROM Contact WHERE AccountId IN : setAccountIds];
        system.debug('conList ** '+conList);
        for(Contact conObj : conList){
            if(contactCountByAccountId.containsKey(conObj.AccountId)){
                contactCountByAccountId.put(conObj.AccountId , contactCountByAccountId.get(conObj.AccountId)+1);
                system.debug('contactCountByAccountId ** '+contactCountByAccountId);
            }
            else{
                contactCountByAccountId.put(conObj.AccountId , 1);
                system.debug('contactCountByAccountId ***** '+contactCountByAccountId);
            }
        }                 
       	List<Account> accountUpdateList = New List<Account>();
        for(Id accId : contactCountByAccountId.keySet()){
            Account accObj = New Account();
            accObj.Id = accId;
            accObj.Contact_Count__c = contactCountByAccountId.get(accId);            
            accountUpdateList.add(accObj);
        }   
        Update accountUpdateList;
    }
}