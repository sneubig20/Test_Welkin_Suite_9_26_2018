public class TestCustomControllerMethods1  {
    public static List<String> months = new List<String>{'Jan', 'Feb', 'Mar'};

    // Outputs String of included months
    public static String getMonthString(){
        String output = '';

        for(String month : months){
            output += month + '>';
        }

        // Remove last comma on the string
        output = output.removeEnd('>');

        return output;
    }
}