trigger accountObj on Account (before insert,before update) {
if(trigger.isInsert){
        if(trigger.isBefore){
            System.debug('Before Insert');
            accountObjHandler.accountFieldUpdate(trigger.new);
        }
    }
}