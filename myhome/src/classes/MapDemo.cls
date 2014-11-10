public class MapDemo{
    
 Map<integer,String> mapObj=new Map<integer,String>();
    
  public void processMap()
  {
      
      mapObj.put(20, 'xx');
      mapObj.put(10, 'yy');
      mapObj.put(30, 'zz');
      mapObj.put(10, 'aa');
      
      system.debug('map size--'+mapObj.size());
      
     List<String> valLst= mapObj.values();
      
      for(String val:valLst)
      {
          
          system.debug('val:'+val);
      }
      
      
     Set<integer> keySt=mapObj.keySet();
      
      for(integer i:keySt)
      {
          system.debug('key:'+i+'value :'+mapObj.get(i));
          
      }
      
      system.debug('key 10 value :'+mapObj.get(10));
      
      
      
      
      
  }    

}