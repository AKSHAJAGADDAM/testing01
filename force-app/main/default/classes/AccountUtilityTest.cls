@isTest
public class AccountUtilityTest {

    @isTest
    static void testCreateAccount() {

        // Test Start
        Test.startTest();

        Account acc = AccountUtility.createAccount('Test Account');

        Test.stopTest();

        // Verify the record was created
        System.assertNotEquals(null, acc.Id);
        System.assertEquals('Test Account', acc.Name);

        // Query the record from the database
        Account insertedAcc = [
            SELECT Id, Name
            FROM Account
            WHERE Id = :acc.Id
        ];

        System.assertEquals('Test Account', insertedAcc.Name);
    }

}