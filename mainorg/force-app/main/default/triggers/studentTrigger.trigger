trigger studentTrigger on Students__c (before insert,after insert,after update) {
    
    if(Trigger.isInsert ){
        
        if(Trigger.isBefore){
         studentTriggerActions.addAdmissionDate(Trigger.new);
        }
        
        if(Trigger.isAfter ){
         studentTriggerActions.giveRollNumber(Trigger.new);
        }
    }
}