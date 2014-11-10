global class BatchApexDemo implements Database.Batchable<sObject> {
global final String query;
global BatchApexDemo(String q) {
query = q;
}
/*
String sql='select id,name from account where name like \'testacc0%\'';

//database.update(sql);
BatchApexDemo obj=new BatchApexDemo(sql);

Database.executeBatch(obj, 10);

*/
    
global Database.QueryLocator start(Database.BatchableContext BC){
return Database.getQueryLocator(query);
}
global void execute(Database.BatchableContext BC,List<sObject> lst){

   // delete scope;
   Database.delete(lst, false); 
    
Database.emptyRecycleBin(lst);
}
global void finish(Database.BatchableContext BC){


}
   
}