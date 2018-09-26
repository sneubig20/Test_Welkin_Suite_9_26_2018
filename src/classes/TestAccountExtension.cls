public class TestAccountExtension {
    
    private Account acct;
    public String setterExample;
    
    
    public String getterExample {
        get{
            return 'This works too!';
        }
        set{}
    }
    
    public String getSetterExample(){
        return setterExample;
    }
    
    public void setSetterExample(String value) {
        setterExample = value;   
        System.debug('Setter Example: ' + setterExample);
    }

    
    public TestAccountExtension(ApexPages.StandardController sc){
        this.acct = (Account)sc.getRecord();
    }
    
    public PageReference displaySetter(){
       	
        return null;
    }
    
    public PageReference clearSetter(){
        setterExample = null;
        return null;
    }
    
}