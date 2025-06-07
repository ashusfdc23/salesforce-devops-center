public class AccountHandler {

    public static void createAccounts(Integer total){
        for (Integer i = 0; i < total; i++) {
            Account acc = new Account();
            acc.Name = 'Test ' + i;

            // ❌ SOQL inside loop (AvoidSoqlInLoops)
            List<Contact> cons = [SELECT Id FROM Contact WHERE LastName = 'Test'];

            insert acc;
        }
    }

    // ❌ No access modifier (default is global)
    static void log(String message){
        System.debug(message);
    }

    // ❌ Class doesn't follow naming convention (if your PMD rule checks for PascalCase)
}