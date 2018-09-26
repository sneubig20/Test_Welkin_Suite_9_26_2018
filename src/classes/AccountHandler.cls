public class AccountHandler {
    public static Account insertNewAccount(String a){
        Account newAccount = new Account(Name=a);
        
        try{
            if(newAccount.Name == ''){
                return null;
            }else{
                Database.SaveResult sr = Database.insert(newAccount, false);
            	return newAccount;   
            }       
        }catch(DMLException e){
           	System.debug('An error occurred: ' + e.getMessage());
            return null;
        }
             
    }
}