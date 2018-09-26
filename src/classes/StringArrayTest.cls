public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer num){
        List<String> stringArray = new List<String>();  
        
        for(Integer n=0; n<num; n++){
            String stringN = 'Test ' + n;
            stringArray.add(stringN);
        }
        
        return stringArray;
    }
}