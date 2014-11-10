public with sharing class TestController1 {


/*public TestController1()
{
 save();
}*/
    public PageReference save() {
    PageReference ref=new Pagereference('/001i000000gCy6W');
    ref.setRedirect(true);
    save1();
    
        return ref;
    }
public void  save1()
{

   save2('Please fill out the Sales District and SAP Sales District Information on the Sales Order before syncing it with Opportunity.');
  
    
  
}

 public Pagereference save2(String errMsg)
 {
   //ApexPages.Message myMsgOpp = new ApexPages.Message(ApexPages.Severity.ERROR,errMsg);
   //ApexPages.addMessage(myMsgOpp);
   PageReference ref=new Pagereference('/003i000000eYh3p');
   return ref;
 }

}