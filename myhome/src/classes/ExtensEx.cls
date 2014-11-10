public with sharing class ExtensEx {

  public String msg {set;get;}
  
  
/* public void setMsg(String val)
  {
    msg=val;
  
  } 
  
  public String getMsg()
  {
  return msg;
  } */

    public ExtensEx(ApexPages.StandardController cntrl) {
    
    Account acc=(Account)cntrl.getRecord();
    
    msg=acc.name+'{'+acc.id+'}';
    }

}