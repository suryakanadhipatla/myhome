@RestResource(urlMapping='/Account2/*')
global class RestServiceEx2{
    
    @HttpPost
    global static String doPost(MyObjects acc ) {
       
        List<Account> acclist=acc.acclst;
        
        insert acclist;
        return 'success';
    }
    
    global class MyObjects
    {
        
        List<Account> acclst {set;get;}
     
    }

}