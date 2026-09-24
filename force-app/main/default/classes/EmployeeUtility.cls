public class EmployeeUtility {

    public String getEmployeeType(Integer salary) {
        if (salary >= 50000) {
            return 'Senior Employee';
        } else {
            return 'Junior Employee';
        }
    }

    public Integer calculateBonus(Integer salary) {
        if (salary >= 50000) {
            return salary * 10 / 100;
        } else {
            return salary * 5 / 100;
        }
    }

    public String getDepartment(String department) {
        if (department == 'IT') {
            return 'Technology';
        } else if (department == 'HR') {
            return 'Human Resources';
        } else if (department == 'Finance') {
            return 'Finance Department';
        } else {
            return 'Other Department';
        }
    }
}