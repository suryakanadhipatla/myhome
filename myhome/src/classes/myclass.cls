public class myclass{
    private integer x;
    private string y;
    public myclass(integer p,string q)
            {
                integer x=20;
                string y='chaitu';
                system.debug('inner value of x'+x);
                system.debug('inner value of y'+y);
                
       this.x=p;
       this.y=q; 
            }
    public void mymethod()
    {
        system.debug('value of x'+x);
         system.debug('value of y'+y);
        
    }
    
}