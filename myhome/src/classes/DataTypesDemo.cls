public class DataTypesDemo{

  public String name='sfdc'; 
  public integer num=10;
  public date dt=Date.today();
  public date dt1=date.newInstance(2013,04,28); 
  public time tm=time.newInstance(2, 20, 30, 10);
  public datetime dtime=datetime.now();
  public boolean flag=true;
    
    
  public void display()
  {
   // num=30;   
    system.debug('num-'+num);
    system.debug('name-'+name);
      system.debug('date-'+dt);
      system.debug('time-'+tm);
      system.debug('datetime-'+dtime);
      system.debug('flag-'+flag);
      
  }
      
      
    
    
    
    
    
    
}