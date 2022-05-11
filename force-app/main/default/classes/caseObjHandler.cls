public class caseObjHandler {
    public static void caseObje(List<case> caseList){
        for(case caseRecord : caseList){
            if(caseRecord.Origin =='Email'){
                caseRecord.Status = 'New';
                caseRecord.Priority = 'Medium';
            }
        }
        
    }

}