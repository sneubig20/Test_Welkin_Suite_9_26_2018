public class AccountWizardController {
    
    // Class Variables
    Account acct;
    Opportunity opp;
    
    // Properties
    public Account getAcct(){
        if(acct == null){
            acct = new Account();
        }
        return acct;
    }
    
    public Opportunity getOpp(){
        if(opp == null){
            opp = new Opportunity();
            opp.AccountId = acct.Id;
        }
        return opp;
    }
    
    // Navigation Methods
    public PageReference step1(){
        return Page.AccountWizard2;
    }
    
    public PageReference step2(){
        return Page.AccountWizard3;
    }
    
    
    
}