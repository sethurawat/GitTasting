global class LeadBatchWebConverted implements Database.Batchable<sObject> {
    
    global Database.QueryLocator Start(Database.BatchableContext BC){
        return Database.getQueryLocator([Select id,LeadSource,Status FROM Lead]);
        
    } 
    
    global void execute(Database.BatchableContext bc , List<Lead> leadList){
        for(Lead ld : leadList ){
            if(ld.LeadSource == 'Web'){
                ld.Status = 'Closed - Converted';
            }else if(ld.LeadSource == 'Other'){
                ld.Status = 'Closed - Not Converted';
            }
        }
        if(leadList.size() > 0){
        	upsert leadList;
        }
        
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Finish');
    }
    
}