@isTest
private class EmployeeServiceTest {

    @isTest
    static void testUpdateBonus() {

        Employee__c emp = new Employee__c(
            Name = 'John',
            Salary__c = 15000       );
        insert emp;

        Test.startTest();
        EmployeeService.updateBonus(emp.Id, 12000);
        Test.stopTest();

        Employee__c updatedEmp = [
            SELECT Bonus__c
            FROM Employee__c
            WHERE Id = :emp.Id
        ];

        System.assertEquals(12000, updatedEmp.Bonus__c);
    }
}