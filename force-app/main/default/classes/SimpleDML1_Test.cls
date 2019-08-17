@IsTest
private class SimpleDML1_Test 
{
    @IsTest
    static void TestAccountCreated() {
        SimpleDML1 sdml1=new SimpleDML1();
        Id accountId=sdml1.CreateAccountAndOpportunity();
        List<Account> accounts=[select Id from Account where id=:accountId];
        System.assertEquals(1, accounts.size(), 'Expected account to be created');
   }

    @IsTest
    static void TestOpportunityCreatedLinkedToAccount() {
        SimpleDML1 sdml1=new SimpleDML1();
        Id accountId=sdml1.CreateAccountAndOpportunity();
        List<Opportunity> opps=[select AccountId from Opportunity where AccountId=:accountId];

        System.assertEquals(1, opps.size(), 'Expected one opportunity for account');
    }

    @IsTest
    static void TestOpportunityNameUpdated() {
        SimpleDML1 sdml1=new SimpleDML1();
        Id accountId=sdml1.CreateAccountAndOpportunity();
        List<Opportunity> opps=[select Id, AccountId, Name from Opportunity where AccountId=:accountId];

        System.assertEquals(opps[0].id, opps[0].Name, 'Expected opportunity name to match id');
    }
}
