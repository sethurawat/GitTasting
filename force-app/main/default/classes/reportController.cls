public class reportController {
@AuraEnabled(cacheable=true)
    public static List<Report> reportMethod(){
        List<Report> relist =  [SELECT Id, Name,FolderName, CreatedDate, Description FROM Report limit 10];
        return relist;
    }
}