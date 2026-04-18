trigger inchargeTeacherUpdate on Class__c (after update) {
    InchargeOfClasses.updatingInchargeTeacher(Trigger.OldMap,Trigger.newMap);

}