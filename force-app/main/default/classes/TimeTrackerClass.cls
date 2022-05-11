public class TimeTrackerClass {
    @AuraEnabled
    public static Time_Log__c timeLogRecordInsert(Time_Log__c timeRecord){
        system.debug('Apex Class');
        insert timeRecord;
        return timeRecord;
    }
}