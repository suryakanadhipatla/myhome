@isTest 
private class myTestClass {
    static testMethod void validatetest() {
       merchandise__c b = new merchandise__c(Name='autoparts',price__c=35,Description__c='this autoparts');
       System.debug('Price before inserting new part: ' + b.price__c);

       // Insert book
       insert b;
    
       // Retrieve the new book
       b = [SELECT price__c FROM merchandise__c WHERE Id =:b.Id];
       System.debug('Price after trigger fired: ' + b.price__c);

       // Test that the trigger correctly updated the price
       System.assertEquals(35, b.price__c);
    }
}