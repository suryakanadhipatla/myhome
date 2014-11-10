public with sharing class cusControllerEx {

    public PageReference login() {
    Pagereference ref=null;
    
    if(username.equals('sfdctraining') && password.equals('sfdc'))
    {
       ref=Page.success;
    
    }
    else
    {
    
        ApexPages.Message myMsgOpp = new ApexPages.Message(ApexPages.Severity.INFO,'Invalid Credentials');
                ApexPages.addMessage(myMsgOpp);            
    
    }
    
    
    
        return ref;
    }


    public String password { get; set; }

    public String userName { get; set; }
}