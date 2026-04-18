public class studentTriggerActions {
    
    public static void addAdmissionDate(List<Students__c> studentList){
        system.debug('Triggering Records__' +studentList);
        for(Students__c each: studentList){
            each.Date_of_Admission__c=Date.today();
        }
        system.debug('Triggering Records after Update__' +studentList);        
    }

    public static void giveRollNumber(List<Students__c> rollNumStudents){
        List<Students__c> allStudents = [SELECT Id,Name,Roll_No__c,Class__c From Students__c];
        system.debug('From Trigger__'+rollNumStudents);
        system.debug('From SELECT__'+allStudents);
        system.debug('From SELECT Size__'+allStudents.size());
        for(Students__c eachTriggeringStudent :rollNumStudents){
            integer count = 0;
            if(eachTriggeringStudent.Class__c != Null){
                for(Students__c eachOfAllStudents :allStudents){
                    if((eachOfAllStudents.Roll_No__c != null) && (eachTriggeringStudent.Class__c == eachOfAllStudents.Class__c)){
                        count++;
                    }
                }
            }
            for(Students__c eachOfAllStudents:allStudents){
                if(eachOfAllStudents.Id == eachTriggeringStudent.Id){eachOfAllStudents.Roll_No__c = count+1;}
                }
        }
        system.debug('From SELECT Size__'+allStudents.size());        
        system.debug('From SELECT in End__'+allStudents);
        UPDATE allStudents;
    }
}