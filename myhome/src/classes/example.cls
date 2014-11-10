public class example{
    list<integer> lst = new list<integer>();
    public void listvalues()
    {
        lst.add(20);
        lst.add(30);
        for (integer i:lst)
        {
            system.debug('my list'+i);
        }
    }

}