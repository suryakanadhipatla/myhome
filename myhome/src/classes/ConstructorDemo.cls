public class ConstructorDemo{
    public String name;
    public integer num;
    
    public ConstructorDemo()
    {
        
        
    }
    
    public ConstructorDemo(String name,integer num)
    {
        this.name=name;
        this.num=num;
                
    }
    
    public void display()
    {
       //String name='zzz';   
        
        system.debug('class level name:'+this.name);
        system.debug('method level name'+name);
        system.debug('num:'+this.num);
    }    
    
    

}