trigger LeadScenario on Lead (before insert) {
    for(Lead leadRecord : trigger.new){
        if(leadRecord.LeadSource == 'Local'){
            leadRecord.Rating = 'Cold';
        }else{
            leadRecord.Rating = 'Hot';
        }
    }
}