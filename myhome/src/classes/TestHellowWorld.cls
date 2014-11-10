@isTest(SeeAlldata=true)
public class TestHellowWorld{

 public static testmethod void displayTest()
 {
   
    /* Account acc=new Account();
         acc.rating='hot';
     insert acc;*/
       Test.startTest();
    HelowWorld obj=new HelowWorld();
     String msg=obj.display('sfdc--');
      String msg1=obj.display1('sfdc--');
     
     Account acc=[select id,name,phone from account where id='001i000000oQFZdAAO'];
     
     system.assertequals('TestTrigAcc1',acc.name);
     system.assert(msg!=null);
     system.assert(msg1!=null);
     Test.stopTest();
 }    
    
    
    
}