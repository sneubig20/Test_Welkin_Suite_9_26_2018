public class ContactsListController {
	
    // Name of the field to sort the contacts by
    private String sortOrder = 'LastName';
    
    // Performs a SOQL query to get a list of contact records, and then 
    // return that list of contacts to the method called (aka the VisualForce Page)
    public List<Contact> getContacts() {
        List<Contact> results = Database.query(
        	'SELECT Id, FirstName, LastName, Title, Email ' +
            'FROM Contact ' + 
            'ORDER BY ' + sortOrder + ' ASC ' + 
            'LIMIT 10'
        );
        
        return results;
    }
    
    // Action Methods
    public void sortByLastName() {
        this.sortOrder = 'LastName';
    }
    
    public void sortByFirstName() {
        this.sortOrder = 'FirstName';
    }
    
}