public class MapDemo1{
    
  public void processMap()
  {
      
      Map<id,Account> accMap=new Map<id,Account>([select id,name,accountnumber from account limit 5]);
      
      List<Account> acclst=accMap.values();
      
      for(account acc:acclst)
      {
          
          system.debug('acc Id--'+acc.id);
          system.debug('acc name:'+acc.name);
          system.debug('acc no-'+acc.accountnumber);
          
      }
      
      
  }    

}