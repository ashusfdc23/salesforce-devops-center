public with sharing class BadExample {
    public static void badMethod() {
        for (Account acc : [SELECT Id, Name FROM Account]) {
            System.debug(acc.Name); // SOQL in loop - violation
        }
    }
}