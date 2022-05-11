trigger ObjTrigger on Account (After insert) {
    for(Account acc : Trigger.new){
        acc.Email_Id__c = 'sethu@gmail.com';
    }
}