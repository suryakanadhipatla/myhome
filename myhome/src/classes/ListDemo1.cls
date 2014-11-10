public class ListDemo1{

 public void getAccountInfo()
 {
     
     integer x=5;
     
     //select id,name,(select id,name from Students__r ) from college__c
     //
     //select id,name,(select id,name from contacts) from account
     //select id,name,(select id,name from students__r) from College__c
       List<Account> acclst=[select id,name,accountnumber from account limit 5];
     
       for(Account acc : acclst)
       {
           
           system.debug('acc id--'+acc.id);
             system.debug('acc name--'+acc.name);
             system.debug('acc number--'+acc.accountnumber);
             //system.debug('acc id--'+acc.id);
           
       }
 }   
    
}