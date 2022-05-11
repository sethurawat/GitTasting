public class HandlerClassOnAccount {
    /*public static void Test(List<Contact> newList){
        system.debug('Handler Call');
        Set<Id> accountIds = new Set<Id>();
        system.debug('accountIds'+accountIds);
        List<Contact> ConList = new List<Contact>();
        List<Account> accountUpdateList = New List<Account>();
        system.debug('accountUpdateList'+accountUpdateList);
        Map<Id , Decimal> contactCountByAccountId = New Map<Id , Decimal>();
        system.debug('contactCountByAccountId'+contactCountByAccountId);
        for(Contact con:newList ){
            system.debug('con'+con);
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
            for(Account acclist : [Select id, Contact_Count__c from Account where id IN: accountIds]){
                system.debug('acclist'+acclist);
                if(acclist.Contact_Count__c != null){
                    contactCountByAccountId.put(acclist.Id,acclist.Contact_Count__c);
                    system.debug('If contactCountByAccountId'+contactCountByAccountId);
                }else{
                    contactCountByAccountId.put(acclist.Id,0);
                    system.debug('Else part contactCountByAccountId'+contactCountByAccountId);
                }              
            }
            for(Id accId : contactCountByAccountId.keySet()){
                system.debug('accId'+accId);
                Account accObj = New Account();
                system.debug('accObj'+accObj);
                accObj.Id = accId;
                accObj.Contact_Count__c = contactCountByAccountId.get(accId);
                accObj.Contact_Count__c += 1;
                accountUpdateList.add(accObj);
                 system.debug('List me add accountUpdateList'+accountUpdateList);
            }
             if(accountUpdateList.size() > 0){
                 system.debug('List Size accountUpdateList>> '+accountUpdateList);
            update accountUpdateList;
                 system.debug('List Update accountUpdateList'+accountUpdateList);
        }
        }
    }*/
}