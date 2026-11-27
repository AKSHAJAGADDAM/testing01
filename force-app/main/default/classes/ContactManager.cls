public class ContactManager {

    public static void createContact(String firstName, String lastName) {
        Contact con = new Contact();
        con.FirstName = firstName;
        con.LastName = lastName;
        insert con;
    }

    public static void updateContact(Id contactId, String email) {
        Contact con = [
            SELECT Id, Email
            FROM Contact
            WHERE Id = :contactId
        ];

        con.Email = email;
        update con;
    }

    public static void deleteContact(Id contactId) {
        Contact con = [
            SELECT Id
            FROM Contact
            WHERE Id = :contactId
        ];

        delete con;
    }

    public static List<Contact> getAllContacts() {
        return [
            SELECT Id, FirstName, LastName, Email
            FROM Contact
            LIMIT 100
        ];
    }

    public static Integer countContacts() {
        return [SELECT COUNT() FROM Contact];
    }
}