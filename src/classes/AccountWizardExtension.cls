public class AccountWizardExtension {
    Id acctId;
    Account acct;
    Opportunity opp;
    
    public AccountWizardExtension(ApexPages.StandardController sc){
        acctId = ApexPages.currentPage().getParameters().get('Id');             
    }
    
    public void createOpportunity(){
        Opportunity opp = new Opportunity();
        opp.AccountId = acctId;  
    }
}