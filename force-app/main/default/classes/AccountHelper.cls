public class AccountHelper {
    public static String getAccountType(String accountId) {
        Account acc = [SELECT Id, Type FROM Account WHERE Id = :accountId LIMIT 1];

        if (acc.Type == 'Customer - Direct') {
            return 'Direct Customer';
        } else if (acc.Type == 'Customer - Channel') {
            return 'Channel Customer';
        } else if (acc.Type == 'Partner') {
            return 'Partner Account';
        } else {
            return 'Other';
        }
    }
}