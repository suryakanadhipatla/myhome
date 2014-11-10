public class DynamicSoql{
    
  public void getAccountDtls(List<string> lst,String name,String rating)
  {
      String sql='select ';
      String innerFields='';
      String innerQury=' from account';
     string sql1='';     
     // String sql='select id,name,accountnumber from account';
      
      if(lst.size()>0)
      {
          for(String val:lst)
          {
              innerFields=innerFields+val+',';
              
          }
        integer num=innerFields.lastIndexOf(',');
          innerFields=innerFields.substring(0,num);
         //integer num= innerFields.lastIndexOf(',');
        
      }
      
     if(name!=null && !name.equals(''))
     {
        // innerFields=innerFields+' name,';
         sql1=sql1+' where name=\''+name+'\'';
         
     }
      
      if(rating!=null && !rating.equals(''))
      {
          //innerFields=innerFields+' rating';
          sql1=sql1+' and rating=\''+rating+'\'';
      }
      
     sql= sql+innerFields+innerQury+sql1;
      system.debug('sql:'+sql);
    List<Account> acclst=Database.query(sql);

  for(account acc:acclst)
  {
      system.debug('acc id'+acc.id);
      system.debug('acc name:'+acc.name);
      system.debug('acc number:'+acc.accountnumber);
      system.debug('custom :'+acc.CustomerPriority__c);
  }


      
      
      
  }    
    
    
    

}