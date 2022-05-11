global class LastTwoDaysModiRecordMailSend implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator([SELECT Id, Name, StageName, OwnerId, Type,LastModifiedDate FROM Opportunity where LastModifiedDate = LAST_N_DAYS:1 AND LastModifiedDate < today]);
    }
    global void execute(Database.BatchableContext bc , List<Opportunity> opportunityList) {
        system.debug('conList'+opportunityList);
        FOR(Opportunity opportunityRecord: opportunityList){
            if(opportunityRecord.StageName == 'Closed Won' && opportunityRecord.Type == 'New Customer'){
                
            }
        }
    }
    global void  finish(Database.BatchableContext bc) {
        system.debug('Call Finish');
    }
}