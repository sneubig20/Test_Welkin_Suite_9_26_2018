public class ContactSearch {

    public static List<Contact> searchForContacts(String firstName, String postalCode){
        List<Contact> contacts = [SELECT ID, Name FROM Contact WHERE LastName = :firstName AND MailingPostalCode = :postalCode];
    	return contacts;
    }
}