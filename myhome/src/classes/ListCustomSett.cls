public with sharing class ListCustomSett {

    public List<selectOption> stateList;

    public String state { get; set; }
    
    
    public List<selectOption> getStateList()
    {
    stateList=new List<selectOption>();
       List<State__c> statelst= State__c.getAll().values();
    selectOption obj1=new selectOption('','NONE');
    stateList.add(obj1);
       for(State__c st:statelst)
       {
       
      selectOption obj=new selectOption(st.StateCode__c,st.name);
      
      stateList.add(obj);
      
       
       
       }
    
    return stateList;
    
    }
    
    
}