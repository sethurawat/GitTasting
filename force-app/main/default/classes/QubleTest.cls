public class QubleTest implements queueable {
    public void execute(queueablecontext test){
        List<Lead> existinRecord = [Select id,LeadSource from lead];
        for(Lead leadrecord : existinRecord){
            leadrecord.LeadSource = 'Web';
        }        
        /* DemoBatchClass obj = new DemoBatchClass();
        Id batchIds =  database.executeBatch(obj);
         System.debug('batchIds'+batchIds);*/
        update existinRecord;
    }
}