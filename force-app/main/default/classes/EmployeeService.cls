public with sharing class EmployeeService {

    public static void updateBonus(Id employeeId, Decimal bonusAmount){

        Employee__c emp = [
            SELECT Id, Bonus__c
            FROM Employee__c
            WHERE Id=:employeeId
        ];

        emp.Bonus__c = bonusAmount;

        update emp;
    }
}