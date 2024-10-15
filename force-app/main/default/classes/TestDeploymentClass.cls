public class TestDeploymentClass {
   
    public static void changeAccountNames(String newName) {
        // Query for all accounts
        List<Account> accounts = [SELECT Id, Name FROM Account];
        
        // Update the name of each account
        for (Account acc : accounts) {
            acc.Name = newName;
        }
        
        // Perform the update
        update accounts;
    }
}