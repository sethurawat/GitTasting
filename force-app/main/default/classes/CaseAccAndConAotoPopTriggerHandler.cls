public class CaseAccAndConAotoPopTriggerHandler {
    public static void caseAccAndConAutoPopu(List<Case> caseList){
        Set<Id> accountIdsSet = new Set<Id>();
        Map<Id,Account> accountNameWithAccountRecord = new Map<Id,Account>();
        Map<Id,Contact> contactNameWithContactRecord = new Map<Id,Contact>();
        for(Case caseRecord : caseList){
            //accountIdsSet.add(caseRecord.split(':').get(1));
        }
        for(Account accRecord : [SELECT id,Name FROM Account WHERE Name IN : accountIdsSet]){
            accountNameWithAccountRecord.put(accRecord.Name,accRecord);
        }
        for(Contact conRecord : [SELECT id,Name FROM Contact WHERE Name IN : accountIdsSet]){
            contactNameWithContactRecord.put(conRecord.Name,conRecord);
        }
    }

}