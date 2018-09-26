public class TestCustomController {
	
    public Account account {get; private set;}
    
    public TestCustomController(){
        Id id = ApexPages.currentPage().getParameters().get('id');
        account = (id==Null)? new Account() : [SELECT Name, Phone FROM Account WHERE Id = :id];
    }
    
    public PageReference updateAccountName(){
        try{
            upsert account;
        }catch(DMLException e){
            ApexPages.addMessages(e);
            return null;
        }
        
        PageReference redirectSuccess = new ApexPages.StandardController(Account).view();
        return redirectSuccess;
    }
}