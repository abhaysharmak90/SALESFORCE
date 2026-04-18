public class InchargeOfClass {
    public static List<Students__c> getstudents() {
        // List<Account> acc ;
        return [SELECT Id,name FROM Students__c LIMIT 5];
    }
}