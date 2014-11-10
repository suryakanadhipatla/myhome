trigger AcountSicUpdate on Account(before update) {

   /* Account acc=trigger.new[0];

 /* if(Trigger.isinsert)
    acc.sic='456';*/
    
 /* if(Trigger.isUpdate)  
    acc.sic='777777'; */
   /* List<Contact> conlst=new List<Contact>();
    List<Contact> conlst1=new List<Contact>();
    
    for(Account acc:Trigger.new)
    {
       conlst= [select id,name,accountid from contact where accountid=:acc.id];
    
       for(contact con : conlst)
       {
       
         con.phone=acc.phone;
         
         
          conlst1.add(con);
       }
       
    //  update conlst;
    
    }
    
    
    update conlst1; */
    
  //  List<Account> acclst=trigger.new;
    
  // List<Account> acclst= [select id,name,phone from account ];
    
   Map<id,Account> accMap=Trigger.newMap;
    
    
    
    List<Contact> conlst=  [select id,name,accountid from contact where accountid=:accMap.keySet()];
    
    
    for(Contact con:conlst)
    {
       Account acc=accMap.get(con.accountid);
       
       Account oldacc=Trigger.oldmap.get(con.accountid);
       
       if(acc.phone!=oldacc.phone)
          con.phone=acc.phone;
       
    
    }
    
    update conlst;
    
    HelowWorld obj=new HelowWorld();
    String msg=obj.display('sfdc--');
    system.debug('msg==='+msg);
    
    
}