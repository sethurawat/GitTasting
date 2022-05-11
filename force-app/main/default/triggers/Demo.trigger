trigger Demo on Account (after insert,after update) {
    if(trigger.isBefore){
    /*if(trigger.isInsert){
        HandlerClassOnAccount.Test(Trigger.new,Trigger.old,Trigger.newMap,Trigger.oldMap);   
       }*/
        /*if(trigger.isupdate){
        HandlerClassOnAccount.Test(Trigger.new,Trigger.old,Trigger.newMap,Trigger.oldMap);   
       }
        if(trigger.isdelete){
        HandlerClassOnAccount.Test(Trigger.new,Trigger.old,Trigger.newMap,Trigger.oldMap);   
       }*/
    }else if(trigger.isAfter){
        if(trigger.isInsert){
       // HandlerClassOnAccount.Test(Trigger.new);   
       }
        /*if(trigger.isupdate){
        HandlerClassOnAccount.Test(Trigger.new,Trigger.old,Trigger.newMap,Trigger.oldMap);   
       }
        if(trigger.isdelete){
        HandlerClassOnAccount.Test(Trigger.new,Trigger.old,Trigger.newMap,Trigger.oldMap);   
       }*/   
    }
}