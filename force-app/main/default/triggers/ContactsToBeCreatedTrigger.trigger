trigger ContactsToBeCreatedTrigger on Account (After insert) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            ContactsToBeCreatedTriggerHandler.ContactsToBeCreated(trigger.new);
        }

    }
}