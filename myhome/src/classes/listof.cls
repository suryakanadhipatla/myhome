public class listof{
public list<integer> x=new list<integer>();
    public void mylistvalues()
    {
        x.add(30);
        x.add(25);
        for(integer i:x)
        {
            system.debug('mylidt contains'+i);
            
        }
        x.sort();
         for(integer i:x)
        {
            
            system.debug('mylidt after sorting contains'+i);
            
        }
    }
    
}