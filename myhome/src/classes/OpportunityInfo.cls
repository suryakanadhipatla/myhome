global class OpportunityInfo{
    
    webservice static  OpportuniyUtil getOpportunityInfo(String stgName)
    {
        
        List<Opportunity> opplst1=[select id,name,stagename from Opportunity where stagename=:stgName];
        OpportunityInfo.OpportuniyUtil res=new OpportunityInfo.OpportuniyUtil();
        if(opplst1!=null && opplst1.size()>0)
        {
           res.statusCode=1;
           res.statusMsg='success'; 
           res.opplst=opplst1; 
        }
        else
        {
          res.statusCode=0;
           res.statusMsg='Data Not Found'; 
           //res.opplst=opplst1;    
        }
        
        return res;
    }
        
        
        
        
        
   Global Class OpportuniyUtil
    {
        webservice integer statusCode;
        Webservice String statusMsg;
        Webservice List<Opportunity> opplst=new List<opportunity>();
    }    
    
    

}