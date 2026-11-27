@isTest
public class OpportunityManagerTest {

    @isTest
    static void testCreateOpportunity() {

        Test.startTest();

        OpportunityManager.createOpportunity('Test Opportunity');

        Test.stopTest();

        Opportunity opp = [
            SELECT Id, Name, StageName
            FROM Opportunity
            WHERE Name = 'Test Opportunity'
            LIMIT 1
        ];

        System.assertEquals('Test Opportunity', opp.Name);
        System.assertEquals('Prospecting', opp.StageName);
    }
}