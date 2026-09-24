@IsTest
private class EmployeeUtilityTest {

    @IsTest
    static void testSeniorEmployee() {

        EmployeeUtility utility = new EmployeeUtility();

        String result = utility.getEmployeeType(60000);

        System.assertEquals('Senior Employee', result);
    }
}