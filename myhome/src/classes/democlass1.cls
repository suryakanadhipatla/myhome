public class democlass1{
    
    public void display2()
{
   LIST<Account> TempAccList = new LIST<Account>();
   LIST<Contact> TempConList = new LIST<Contact>();
   List<Account> AccList = [SELECT ID, NAME, PHONE FROM ACCOUNT WHERE NAME LIKE 'TEST%'];
   LIST<Contact> ConList = [SELECT ACCOUNTID, PHONE FROM CONTACT WHERE ACCOUNT.NAME LIKE 'TEST%'];
   for(Account ACC : AccList){
     
      Acc.phone = '111';
      TempAccList.add(Acc);
      system.debug('AccList' + Acc.phone);  
      for(Contact Con : ConList) {
        if (Acc.id == Con.AccountId)
        {
           Con.phone = '111';
           TempConList.add(Con);
        }
      }  
    }
    update TempAccList;
    update TempConList;
}
}