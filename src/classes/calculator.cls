public class calculator {
    public Integer xvalue {get;set;}
    public Integer yvalue {get;set;}
    public Integer result {get;set;}
    public String operation {get;set;}
    
    public String name;
    
    // Properties
    public String getName(){
        return name;
    }
    
    public void setName(String name){
        this.name = 'Override by Setter';
    }
    
    // Action Methods
    public void add(){
        result = xvalue + yvalue;
        operation='Addition';
    }
    
    public void subtract(){
        result = xvalue - yvalue;
        operation = 'Subtraction';
    }
    
    public void multiply(){
        result = xvalue * yvalue;
        operation = 'Multiplication';
    }
    
    public void reset(){
        result = null;
        xvalue = null;
        yvalue = null;
        operation = '';
    }
    
    
    // Navigation Buttons
    public PageReference openPage1(){
        PageReference pr = new PageReference('/apex/Page1');
        return pr;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}