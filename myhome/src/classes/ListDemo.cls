public class ListDemo{
    
 public List<iNteger> lst=new List<integer>();   
    
  public void processList()
  {
      
      lst.add(20);
      lst.add(30);
      lst.add(10);
      lst.add(10);
      lst.add(40);
      
      system.debug('size--'+lst.size());
      
      for(integer i:lst)
      {
          
          system.debug('value:'+i);
      }   
      
      lst.sort();
      
      system.debug('after sorting--');
      
     /* for(integer i=0;i<lst.size();i++)
      {
         integer val= lst.get(i);
   
          system.debug('val--'+val);
          
      }  */
      
      // comment--
        for(integer i:lst)
      {
          
          system.debug('value:'+i);
      } 
      
      system.debug('0Th index value'+lst.get(0));
      
      
      
      
      
  }    
    

}