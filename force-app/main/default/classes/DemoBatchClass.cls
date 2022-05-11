global class DemoBatchClass implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator([Select id,FirstName,LastName FROM Contact limit 10]);
    }
     global void execute(Database.BatchableContext bc , List<Contact> conList) {
        system.debug('conList'+conList);
         FOR(Contact con: conList){
             con.LastName = 'Batch';
         }
         update conList;
    }
     global void  finish(Database.BatchableContext bc) {
        system.debug('Call Finish');
    }
}