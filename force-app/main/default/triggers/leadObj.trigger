trigger leadObj on Lead (before insert) {
if(trigger.isupdate){
        if(trigger.isBefore){
            System.debug('Before Insert');
           leadObjHandler.firstNameAdd(trigger.old);
        }
    }
}