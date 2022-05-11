global class LeadBatch implements Database.Batchable<sObject> {
    
    global Database.QueryLocator Start(Database.BatchableContext BC){
        return Database.getQueryLocator([Select id,LeadSource,Status FROM Lead]);
        
    } 
    
    global void execute(Database.BatchableContext bc , List<Lead> leadList){
        integer i;
        for( i = 0; i <=12; i++ ){
            leadList[i].LeadSource = 'Other';
            System.debug('i'+i);
        }
        upsert leadList;
        
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Finish');
    }
    
}