public class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(String parm1){
        List<List<SObject>> searchList = [FIND :parm1 IN ALL FIELDS RETURNING Contact(FirstName, LastName), Lead(FirstName, LastName)];
    	return searchList;
    }
}