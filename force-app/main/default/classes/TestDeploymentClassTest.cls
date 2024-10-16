@isTest
public class TestDeploymentClassTest {
    
    @testSetup
    static void setup() {
        // Create test accounts
        List<Account> testAccounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            testAccounts.add(new Account(Name = 'Test Account ' + i, Phone = '1234567890'));
        }
        insert testAccounts;
    }
    
    @isTest
    static void testChangeAccountNames() {
        // Define new name and phone
        String newName = 'Updated Account Name';
        String newPhone = '0987654321';
        
        // Call the method to change account names
        TestDeploymentClass.changeAccountNames(newName, newPhone);
        
        // Query the updated accounts
        List<Account> updatedAccounts = [SELECT Name, Phone FROM Account];
        
        // Verify the changes
        for (Account acc : updatedAccounts) {
            System.assertEquals(newName, acc.Name);
            System.assertEquals(newPhone, acc.Phone);
        }
    }
}