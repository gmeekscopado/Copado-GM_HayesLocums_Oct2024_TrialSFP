public class TestDeploymentClass {
   
    public static void changeAccountNames(String newName, String newPhone) {
        // Query for all accounts
        List<Account> accounts = [SELECT Id, Name, Phone FROM Account];
        
        // Update the name of each account
        for (Account acc : accounts) {
            acc.Name = newName;
            acc.Phone = newPhone;
        }
        
        // Perform the update
        update accounts;
    }
}