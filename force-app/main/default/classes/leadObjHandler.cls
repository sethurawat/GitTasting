public class leadObjHandler {
    public static void firstNameAdd(List<Lead> leadList){
        
        for(Lead leadRecord : leadList){
            if(leadRecord.FirstName != null){
              leadRecord.FirstName = 'Doctor';

            }
            update leadRecord;
        }
        
    }

}