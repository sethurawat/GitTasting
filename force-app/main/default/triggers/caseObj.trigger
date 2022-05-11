trigger caseObj on Case (before insert) {
      if(trigger.isInsert){
        if(trigger.isBefore){
            System.debug('Before Insert');
            caseObjHandler.caseObje(trigger.new);
        }
    }

}