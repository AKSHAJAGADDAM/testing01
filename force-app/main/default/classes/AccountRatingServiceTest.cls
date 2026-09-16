@IsTest
private class AccountRatingServiceTest {

    @IsTest
    static void testMarkAccountAsHot() {

        // GIVEN
        Account acc = new Account(
            Name = 'Test Account',
            Rating = 'Cold'
        );

        insert acc;

        // WHEN
        Test.startTest();

        AccountRatingService.markAccountAsHot(acc.Id);

        Test.stopTest();

        // THEN
        Account updatedAccount = [
            SELECT Id, Rating
            FROM Account
            WHERE Id = :acc.Id
        ];

        System.assertEquals(
            'Hot',
            updatedAccount.Rating
        );
    }
}