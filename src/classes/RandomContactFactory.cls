public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numCon, String lName){
        List<Contact> cList = new List<Contact>();
        for(Integer i=0; i<numCon; i++){
            Contact c = new Contact(FirstName='FirstName' + i, LastName=lName);
            cList.add(c);
        }
        return cList;
    }
}