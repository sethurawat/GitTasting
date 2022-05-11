trigger AccountWithContacInsert on Account (after insert) {
    if(trigger.isInsert){
        for(Account acc : trigger.new){
           contact con = new contact();
            con.AccountId=acc.id;
            con.FirstName = 'Kalu';
            con.LastName = 'Rawat';
            con.Email = 'kalu@gmail.com';
            insert con;
        }       
    }

}