@isTest
private class GreetingServiceTest {
    
    @isTest
    static void testGreet() {
        
        Test.startTest();
        String result = GreetingService.greet('Akshaja');
        Test.stopTest();
        
        System.assertEquals(
            'Hello, Akshaja!',
            result,
            'Greeting message should contain the provided name.'
        );
    }
}