public with sharing class ajaxDemo {

   public string msg {set;get;}
   public string msg1 {set;get;}
   Public Account acc;
   
    public ajaxDemo(ApexPages.StandardController controller) {
     acc=(Account)controller.getRecord();
    }
    
    public void msgIno()
    {
    msg=acc.name+'{'+acc.id+'}';
    
    msg1=acc.phone;   
  
    }
    

}