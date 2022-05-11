public class contactRollupAmountHalper {
    public static void contactRollupAmountCount(List<Contact> newContact){
        Set<Id> accountIds = new  Set<Id>();
        Map<Id,Account> accountIdWithAccoutRecordMapToUpdate = new Map<Id,Account>();
        Map<Id,Decimal> contact_Rollup_Total_Amount_Map = new  Map<Id,Decimal>();
        Map<Id,Decimal> contact_Rollup_Amount_Positive_XMap = new  Map<Id,Decimal>();
        Map<Id,Decimal> contact_Rollup_Amount_Negative_YMap = new  Map<Id,Decimal>();
        
        for(Contact conRecord : newContact){
            accountIds.add(conRecord.AccountId);
        }
        
        AggregateResult[] groupedResults  = [SELECT Account__c, COUNT(Amount__c) FROM Price_Master__c Where Account__c In :contact_Rollup_Amount_Positive_XMap.keyset() GROUP BY Account__c];
        for (AggregateResult ar : groupedResults)  {
            contact_Rollup_Amount_Positive_XMap.put(String.valueOf(ar.get('Account__c')),Decimal.valueOf(String.valueOf(ar.get('expr0'))));
        }
        
    }  
}