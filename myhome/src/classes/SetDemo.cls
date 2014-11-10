public class SetDemo{
    
public set<integer> st=new Set<integer>();

public void processSet()
{
    
     st.add(20);
  
     st.add(30);
      st.add(10);
     st.add(10);
    
  system.debug('set size--'+st.size());  
    
   for(integer i: st)
   {
       system.debug('val:'+i);
       
   }
    
       
    
    List<integer> lst=new List<integer>(st);
    
    lst.sort();
    
    system.debug('after sorting-');
      for(integer i: lst)
   {
       system.debug('val:'+i);
       
   }

 
    
    
}    

}