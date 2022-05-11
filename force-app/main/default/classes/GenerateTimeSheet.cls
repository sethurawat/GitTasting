public class GenerateTimeSheet {
    @AuraEnabled
    public static List<User> getUsers(){
        List<User> userList = [SELECT id,Name,Email FROM User where Email = 'sethurawat24@gmail.com'];
        return userList;
    }
    
    
    @AuraEnabled
    public static List<Timesheet_Log__c> timeSheetLog(){
        List<Timesheet_Log__c> timeSheetLogList = [SELECT Id,Name,date__c, Hours__c, Project__r.Name FROM Timesheet_Log__c];
        return timeSheetLogList;
    }
    
    
@AuraEnabled
    public static Map<String,Map<String,Decimal>> showProjectNameWithMonth(){
        Map<String,Map<String,Decimal>> allTimeLogReletedProjectRecord = new Map<String,Map<String,Decimal>>();
        for(Timesheet_Log__c tsRecord : [SELECT Id, date__c, Hours__c, Project__r.Name FROM Timesheet_Log__c]){
            Map<String,Decimal> timeLogRecord = new Map<String,Decimal>();
            String monthKey = tsRecord.date__c.month()+'-'+tsRecord.date__c.year();
            Decimal totalHours = 0;
            if(allTimeLogReletedProjectRecord.containsKey(tsRecord.Project__r.Name)){
                timeLogRecord =  allTimeLogReletedProjectRecord.get(tsRecord.Project__r.Name);        
            }
            if(timeLogRecord.containsKey(monthKey)){
                totalHours = timeLogRecord.get(monthKey);            
            }
            totalHours += tsRecord.Hours__c;
            timeLogRecord.put(monthKey, totalHours);
            allTimeLogReletedProjectRecord.put(tsRecord.Project__r.Name,timeLogRecord);
        }
        return allTimeLogReletedProjectRecord;
    }
    
    
}