public class SoslDemo{
 
    public void searchData()
    {
        
       List<List<Sobject>> lst=[find 'test' in all fields returning Account(id,name,accountnumber,CustomerPriority__c),Contact(id,name,phone),Opportunity(id,name,CurrentGenerators__c)];
       
        List<account> acclst=lst.get(0);        
        List<contact> conlst=lst.get(1);  
        List<opportunity> opplst=lst.get(2);  
  
        for(Account acc: acclst)
        {
            system.debug('acc id:'+acc.id);
            system.debug('acc name'+acc.name);
            system.debug('acc prority'+acc.CustomerPriority__c);
        }
       for(Contact con: conlst )
        {
            system.debug('con id:'+con.id);
            system.debug('con name'+con.name);
        }
       
        
        
    }
    
    

}