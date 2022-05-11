public class contactListController {
    @AuraEnabled
    public static list<Contact> getContactList(){
        List<Contact> contactList = new List<Contact>([Select id,FirstName,LastName,Phone from Contact where Email != null]);
        return contactList;
    }

}