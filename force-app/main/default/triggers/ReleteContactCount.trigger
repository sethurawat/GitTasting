trigger ReleteContactCount on Contact (After insert,After update,After delete) {
    if(trigger.isInsert){
        ReleteContactCountHandeler.insertCount(Trigger.new);
    }
    if(trigger.isUpdate){
        ReleteContactCountHandeler.insertCount(Trigger.new);
        ReleteContactCountHandeler.insertCount(Trigger.old);
    }
    if(trigger.isDelete){
        ReleteContactCountHandeler.insertCount(Trigger.old);
    }
    // Use a switch case
    /*switch on Trigger.operationType {
when AFTER_INSERT {
// After Insert
ReleteContactCountHandeler.insertCount(Trigger.new);
}
when AFTER_UPDATE {
// After Update
ReleteContactCountHandeler.insertCount(Trigger.new);
ReleteContactCountHandeler.insertCount(Trigger.old);
}
when AFTER_DELETE {
// After Delete
ReleteContactCountHandeler.insertCount(Trigger.old);
}

}*/
}