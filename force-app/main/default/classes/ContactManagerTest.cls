@isTest
public class ContactManagerTest {

    @isTest
    static void testCreateContact() {

        Test.startTest();

        ContactManager.createContact('Akshaja', 'Test');

        Test.stopTest();

        Contact con = [
            SELECT Id, FirstName, LastName
            FROM Contact
            WHERE LastName = 'Test'
            LIMIT 1
        ];

        System.assertEquals('Akshaja', con.FirstName);
        System.assertEquals('Test', con.LastName);
    }
}