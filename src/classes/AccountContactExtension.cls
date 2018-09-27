public class AccountContactExtension  {
    public static list<String> months = new List<String>{'Jan', 'Feb', 'Mar'};

    public static String outputMonthString(){
        String output = '';

        for(String month : months){
            output += month + ', ';
        }

        // Remove comma if at end of string
        output.removeEnd(',');

        return output;
    }
}