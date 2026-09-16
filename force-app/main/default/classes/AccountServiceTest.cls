@IsTest
private class AccountServiceTest {

    @IsTest
    static void testCreateAccount() {

        Test.startTest();

        Account acc = AccountService.createAccount('Test Account');

        Test.stopTest();

        System.assertNotEquals(null, acc.Id);
        System.assertEquals('Test Account', acc.Name);
    }
}