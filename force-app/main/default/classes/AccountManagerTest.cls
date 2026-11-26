@isTest
public class AccountManagerTest {

    @isTest
    static void testCreateAccount() {

        Test.startTest();

        AccountManager.createAccount('Test Account');

        Test.stopTest();

        Account acc = [
            SELECT Id, Name
            FROM Account
            WHERE Name = 'Test Account'
            LIMIT 1
        ];

        System.assertEquals('Test Account', acc.Name);
    }
}