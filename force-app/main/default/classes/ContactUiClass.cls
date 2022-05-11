public class ContactUiClass {
    @AuraEnabled
    public static Contact contactRecordInsert(Contact contObj ){
        system.debug('Apex Class Call');
        insert contObj;
        return contObj;
    }
    @AuraEnabled
    public static list<Contact> contactTableInsert(){
        return [Select id,FirstName,LastName,Email,Phone from Contact order by LastModifiedDate DESC Limit 10];
       // system.debug('return');
    }

}