@IsTest
private class SimpleDML1_NoSOQLTest 
{
    @IsTest
    static void TestNoSOQL() {
        SimpleDML1 sdml1=new SimpleDML1();
        Id accountId=sdml1.CreateAccountAndOpportunity();
        System.assertEquals(0, Limits.getQueries(), 'You cannot use any SOQL queries to pass this challenge');
    }
}
