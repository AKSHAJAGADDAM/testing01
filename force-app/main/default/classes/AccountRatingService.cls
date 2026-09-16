public class AccountRatingService {

    public static void markAccountAsHot(Id accountId) {

        Account acc = [
            SELECT Id, Name, Rating
            FROM Account
            WHERE Id = :accountId
            LIMIT 1
        ];

        acc.Rating = 'Hot';

        update acc;
    }
}