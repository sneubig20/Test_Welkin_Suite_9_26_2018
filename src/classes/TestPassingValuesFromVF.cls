public class TestPassingValuesFromVF {
    public Account a;
    
    public String SelectedValue {get;set;}
    public List<SelectOption> selectOptions {get;set;}
    
    public TestPassingValuesFromVF(){
        Id thisId = ApexPages.currentPage().getParameters().get('Id');
        a = (thisId == null) ? new Account() : [SELECT ID, Name FROM Account WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }
    
    public Account getA(){
        return a;
    }
    
    public PageReference debugAccount(){
    	System.debug('a: ' + a);
        return null;
    }
    
    
    
    public PageReference insertAccount(){
        try{
            insert a;
        }catch(DMLException e){
            ApexPages.addMessages(e);
            return null;
        }
        
        PageReference redirectSuccess = new ApexPages.StandardController(a).view();
        return redirectSuccess;
    }
    
    public void autoRun(){
        Schema.DescribeFieldResult selectFieldDescription = Account.CustomerPriority__c.getDescribe();
        selectOptions = new List<SelectOption>();
        
        for(Schema.PicklistEntry picklistEntry : selectFieldDescription.getPicklistValues()){
            selectOptions.add(new SelectOption(picklistEntry.getValue(), picklistEntry.getLabel()));
        }
    }
    
    public void checkValue(){
        System.debug('SelectedValue: ' + selectedValue);
    }
}