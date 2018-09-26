@isTest
private class TestRestrictContactByName {
	
    @isTest static void validContact(){
        Contact c = new Contact(LastName='test');
        
        test.startTest();
        Database.SaveResult result = Database.insert(c);
        test.stopTest();
        
        System.assert(result.isSuccess());
        System.assertEquals('Test', c.LastName);
    }
    
    @isTest static void invalidContact(){
        Contact c = new Contact(LastName='INVALIDNAME');
        
        test.startTest();
        Database.SaveResult result = Database.insert(c);
        test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assertEquals('INVALIDNAME', c.LastName);
    }
}