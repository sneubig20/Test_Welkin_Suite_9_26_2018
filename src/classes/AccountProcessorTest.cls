@IsTest
public class AccountProcessorTest {

    @IsTest
    private static void testAccountContactList(){
        Account a = new Account();
        a.Name = 'Test Account';
        a.SLA__c = 'Gold';
        insert a;

        Contact con = new Contact();
        con.AccountId = a.Id;
        con.LastName = 'LastName';
 		insert con;
        
        List<Id> acctIdList = new List<Id>();
        acctIdList.add(a.Id);
        
        Test.startTest();
        	AccountProcessor.countContacts(acctIdList);
        Test.stopTest();
        
        Account acctWithContacts = [SELECT Number_of_Contacts__c FROM Account WHERE Id = :a.Id LIMIT 1];
    	System.assertEquals(1, acctWithContacts.Number_of_Contacts__c);

    }
}