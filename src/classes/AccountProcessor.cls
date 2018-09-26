global class AccountProcessor {

    @future
    public static void countContacts(List<ID> acctIdList){
        List<Account> acctList = [SELECT Id, (SELECT ID FROM Contacts) FROM Account WHERE ID IN :acctIdList];
        
        for(Account acct : acctList){
            List<Contact> contactList = acct.contacts;
            acct.Number_of_Contacts__c = contactList.size();
        }
		
        update acctList;  
    }
}