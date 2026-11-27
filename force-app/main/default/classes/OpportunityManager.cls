public class OpportunityManager {

    public static void createOpportunity(String oppName) {
        Opportunity opp = new Opportunity();
        opp.Name = oppName;
        opp.StageName = 'Prospecting';
        opp.CloseDate = Date.today().addDays(30);
        insert opp;
    }

    public static void updateAmount(Id oppId, Decimal amount) {
        Opportunity opp = [
            SELECT Id, Amount
            FROM Opportunity
            WHERE Id = :oppId
        ];

        opp.Amount = amount;
        update opp;
    }

    public static void closeOpportunity(Id oppId) {
        Opportunity opp = [
            SELECT Id, StageName
            FROM Opportunity
            WHERE Id = :oppId
        ];

        opp.StageName = 'Closed Won';
        update opp;
    }

    public static void deleteOpportunity(Id oppId) {
        Opportunity opp = [
            SELECT Id
            FROM Opportunity
            WHERE Id = :oppId
        ];

        delete opp;
    }

    public static List<Opportunity> getOpenOpportunities() {
        return [
            SELECT Id, Name, StageName, Amount
            FROM Opportunity
            WHERE IsClosed = false
        ];
    }
}