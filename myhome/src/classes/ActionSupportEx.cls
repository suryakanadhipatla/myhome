public with sharing class ActionSupportEx {

  public String message {set;get;}
  public boolean flag=false;
   
    public PageReference sayHellow() {
    
    message='hellow sfdc---';
    flag=true;
        return null;
    }
    
    public boolean getFlag()
    {
    
    return flag;
    }

}