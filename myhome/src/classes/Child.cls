public class Child extends Parent{

    public integer val;
    
    public child(String name,integer num,integer num1,integer val)
    {
      super(name,num,num1); 
        this.val=val;
    }
    
    public override void display()
    {
        system.debug('Child class display method');
        
    }
    
    public void display1()
    {
        system.debug('child class display1 method');
       system.debug('val:'+val);        
    }     
    
    
}