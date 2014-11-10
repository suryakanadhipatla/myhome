public class StaticDemo{
    
  public static string name;
  public integer num;  
    
   public StaticDemo(String nm,integer num)
   {
      name=nm;
      this.num=num; 
   }
    
    
    public static void display1()
    {
        system.debug('static method name'+name);
        //system.debug('num'+num);
    }
    
    public void display()
    {
        system.debug('name=='+name);
        system.debug('num=='+num);
    }
    

}