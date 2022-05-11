trigger CaseAccountAndContactAotoPopuleteTrigger on Case (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            CaseAccAndConAotoPopTriggerHandler.caseAccAndConAutoPopu(Trigger.new);
        }
    }
}