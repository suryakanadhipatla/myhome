public class DmlOperations{
    
  public void insertAccDtls()
  {
      Account acc=new Account();
      acc.name='testaac11';
      acc.Phone='5555';
      
      insert acc;
      
      Account acc1=new Account(name='testacc12',phone='5555');
      insert acc1;
      
      Account acc2=new Account(name='testacc13',phone='5555');
      Database.insert(acc2);
      
  }
    
    public void updateAccDtls()
    {
        Account acc=[select id,name,phone from account where id='001i000000gCy6W'];
        acc.phone='456778';
        
        update acc;
        
         Account acc1=[select id,name,phone from account where id='001i000000gCy6W'];
        acc1.rating='Cold';
        
        Database.update(acc1);
        
        
        
    }
    
    
      public void updateAccDtls1()
    {
      /*  Account acc=[select id,name,phone from account where id='001i000000gCy6W'];
        acc.phone='456778';
        
        update acc;*/
        
         Account acc=[select phone from account where id='001i000000gCy6W'];
//acc1.rating='Cold'; 
        
       /* for(Account acc : acclst)
        {
            acc.rating='Cold';
            
        }*/
        
        if(acc.Name.equals('Burlington Textiles Corp of America'))
        {
            acc.rating='Hot';
            
        }    
        
       /* Account acc1=new Account(Id='001i000000gCy6W');
        acc1.rating='Hot';*/
        
        Database.update(acc);
        
        
        
    }
    
    
    
    public void bulkInsertAccnts()
    {
        List<Account> acclst=new List<account>();
       
        for(integer i=0;i<2;i++)
        {
          Account acc1=new Account(name='acctest0'+i,phone='5555');
          //insert acc1; 
          acclst.add(acc1);     
         }
     Account acc=new Account();
        acc.Phone='44444';
        acclst.add(acc);
        
      // insert acclst; 
       Database.insert(acclst,false); 
    }
    
     public void updateBulkAccDtls()
    {
        
       
        
        //List<account> acclst=[select id,name,phone from account where name like 'acctest%'];
      /*  set<Id> idlst=new set<Id>();
        for(Account acc:acclst)
        {
            idlst.add(acc.id);
        }*/
        Map<id,account> acclst=new Map<id,account>([select id,name,phone from account where name like 'acctest%']);
      List<contact> conlst=[select id,name,phone,accountid from contact where account.id=:acclst.keyset()];
        //List<contact> conlst=new List<contact>();
       // List<contact> conlst1=new List<contact>();
        // List<account> acclst1=new List<account>();
        for(Account acc:acclst.values())
        {
            
           // conlst=[select id,name,phone,accountid from contact where account.id=:acc.id];
         
             acc.Phone='7777';
            for(Contact con : conlst)
            {
                if(acc.id==con.accountid){
                con.phone='7777';
                //conlst1.add(con);
                    //
                }
            }
         // acclst1.add(acc);
            
        }
        
        update acclst.values();
        update conlst;
        
        
    }
    
    public void accDisplay()
    {
        
        List<Account> acclst=[select id,phone from account limit 5];
        
        for(Account acc: acclst)
        {
            system.debug('accId:'+acc.id);
            system.debug('name:'+acc.name);
            system.debug('phone:'+acc.phone);
        }
        
    }
    

}