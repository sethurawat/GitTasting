@RestResource(urlMapping='/Account/*/contacts')
global with sharing class AccountManager {
	 @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        String accountId = request.requestURI.substringBetween('Accounts/','/contacts');
        system.debug(accountId);
        Account objAccount = [Select id,(Select id from Contacts) from Account where id =: accountId Limit 1];
        return objAccount;
    }
}