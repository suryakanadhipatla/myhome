public class AccessModifoersDemo{

    
    public String name='sfdc';
    private integer num=10;
    
    private void display()
    {
        
        system.debug('name :'+name);
        system.debug('num:'+num);
    }
    
    public void display1()
    {
        display();
        
    }   
    
    
}