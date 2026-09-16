public class AccountService {

    public static Account createAccount(String accountName) {

        Account acc = new Account(
            Name = accountName
        );

        insert acc;

        return acc;
    }
}