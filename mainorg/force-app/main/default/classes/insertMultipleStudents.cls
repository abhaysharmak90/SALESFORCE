public class insertMultipleStudents {
    public static void insertStudentsInBulk(){    
        List<Students__c> addTheseStudents= new List<Students__c>();    
        List<Class__c> Myclass =[SELECT Id FROM Class__c];    
        List<Family__c> Myfamily =[SELECT Id FROM Family__c];    
        for(integer i=22; i<31; i++){       
            Students__c temp = new Students__c();        
            temp.Name = 'test'+i;      
            temp.Class__c=Myclass[0].Id;        
            temp.Related_Family__c = Myfamily[0].Id;    
            addTheseStudents.add(temp);
        }
        INSERT addTheseStudents;
    }
}