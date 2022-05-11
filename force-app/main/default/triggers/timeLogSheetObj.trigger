trigger timeLogSheetObj on Timesheet_Log__c (before insert) {
    Map<String,id> timesheetUserIdWithDateMap = new Map<String,id>();
    for(Timesheet__c timesheetRecord : [Select id,User__c,Date__c from Timesheet__c]){      
        timesheetUserIdWithDateMap.put(timesheetRecord.User__c +'-'+ timesheetRecord.Date__c,timesheetRecord.id);
    }
    for(Timesheet_Log__c timeSheetLogtRecord : Trigger.New){
        String userIDAndDate = timeSheetLogtRecord.User__c +'-'+ timeSheetLogtRecord.Date__c;        
        if(timesheetUserIdWithDateMap.containsKey(userIDAndDate)){
            timeSheetLogtRecord.Timesheet__c = timesheetUserIdWithDateMap.get(userIDAndDate);
        }
    }
}