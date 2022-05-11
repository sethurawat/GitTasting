trigger RelatedContact1 on Account (After insert) {
        if(Trigger.isAfter){
            if(Trigger.isInsert){
                RelatedContactHandler.handleAfterInsert(Trigger.New);
            }
        }
    }