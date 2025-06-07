@isTest
private class AccountHelperTest {
    @isTest
    static void testGetAccountType_Direct() {
        Account acc = new Account(Name = 'Test Direct', Type = 'Customer - Direct');
        insert acc;

        Test.startTest();
        String result = AccountHelper.getAccountType(acc.Id);
        Test.stopTest();

        System.assertEquals('Direct Customer', result);
    }

    @isTest
    static void testGetAccountType_Channel() {
        Account acc = new Account(Name = 'Test Channel', Type = 'Customer - Channel');
        insert acc;

        String result = AccountHelper.getAccountType(acc.Id);
        System.assertEquals('Channel Customer', result);
    }

    @isTest
    static void testGetAccountType_Partner() {
        Account acc = new Account(Name = 'Test Partner', Type = 'Partner');
        insert acc;

        String result = AccountHelper.getAccountType(acc.Id);
        System.assertEquals('Partner Account', result);
    }

    // 🟥 We are NOT testing the "else" (other) condition to simulate 90% coverage
}