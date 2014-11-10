public with sharing class ExtensEx1 {

  Public Account acc {set;get;}
  
    public ExtensEx1(ApexPages.StandardController controller) {
   
     acc=(Account)controller.getRecord();
    }
    
    
    public PageReference  save()
    {
       PageReference ref=null;
      if(acc.phone!=null && !String.isBlank(acc.phone))
      {
      insert acc;
      
      Contact obj=new Contact();
      obj.lastname='testContcat';
      obj.phone=acc.phone;
      obj.accountid=acc.id;
      insert obj;
      
       ref=new PageReference('/'+acc.id);
    //ref=Page.MyVFEX;
      }
      else
      {
        ApexPages.Message myMsgOpp = new ApexPages.Message(ApexPages.Severity.INFO,'Please provide Phone.');
                ApexPages.addMessage(myMsgOpp);               
      }
      return ref;
    
    }

}