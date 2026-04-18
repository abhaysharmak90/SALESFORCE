public class InchargeOfClasses {
    
    public static void updatingInchargeTeacher(Map<Id,Class__c>oldvalues,Map<Id,Class__c>newvalues){
        system.debug('NewMap__'+newvalues);
        system.debug('OldMap__'+oldvalues);
        List<Students__c> allStudents = [SELECT Id,Name,Class__c,Class_Teacher__c FROM Students__c];
        for(Class__c eachUpdatedClass : newvalues.values()){
            if(oldvalues.get(eachUpdatedClass.Id).Teacher_In_charge__c != eachUpdatedClass.Teacher_In_charge__c){          
                system.debug(eachUpdatedClass);
                for(Students__c eachStu : allStudents){
                    if(eachUpdatedClass.Id == eachStu.Class__c){
                        system.debug('student in same class__'+ eachStu.name);
                        eachStu.Class_Teacher__c =eachUpdatedClass.Teacher_In_charge__c;
                    }
                }
            }
        }
        update allStudents;
        
    }
    
    public static void updateclass(){
        List<Class__c> allClasses = [SELECT Id,Name,Teacher_In_charge__c FROM Class__c];
        for(Class__c eachClass:allClasses){
            if(eachClass.Teacher_In_charge__c == 'a09dM00000OaxtVQAR'){
                eachClass.Teacher_In_charge__c = 'a09dM00000PBsFFQA1';
                
            }else if(eachClass.Teacher_In_charge__c == 'a09dM00000PBsFFQA1'){
                eachClass.Teacher_In_charge__c = 'a09dM00000OaxtVQAR';
            }
        }
        update allClasses;
    }

}