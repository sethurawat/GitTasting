trigger CaseOrigin on Case (before insert) {
    for(Case caseRecord : Trigger.new){
        if(caseRecord.origin == 'Phone'){
        caseRecord.Status = 'New';
        caseRecord.Priority = 'High';
        }
    }
}