trigger ContactCountTrigger on Contact (After insert,After update,After delete) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            ContactCountTriggerHelper.countContacts(Trigger.new, true);
            //Contact record rollup
            //contactRollupAmountHalper.contactRollupAmountCount(trigger.new);
        }else if(Trigger.isDelete){
            ContactCountTriggerHelper.countContacts(Trigger.old, false);
        }else if(Trigger.isUpdate){
            List<Contact> contactRecordsToAdd = new List<Contact>();
            List<Contact> contactRecordsToRemove = new List<Contact>();
            for(Contact contactRecord : Trigger.new){
                if(contactRecord.AccountId != Trigger.oldMap.get(contactRecord.Id).AccountId){
                    if(Trigger.oldMap.get(contactRecord.Id).AccountId != Null){
                        contactRecordsToRemove.add(Trigger.oldMap.get(contactRecord.Id));
                    }
                    if(contactRecord.AccountId != null){
                        contactRecordsToAdd.add(contactRecord);
                    }
                }
            }
            if(contactRecordsToAdd.size() > 0){
                ContactCountTriggerHelper.countContacts(contactRecordsToAdd, true);
            }
            if(contactRecordsToRemove.size() > 0){
                ContactCountTriggerHelper.countContacts(contactRecordsToRemove, false);
            }
        }
    }
}