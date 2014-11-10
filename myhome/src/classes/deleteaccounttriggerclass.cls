public class deleteaccounttriggerclass{
public static void deleteaccounttriggerclassmethod(list<account> acc)
{
for(account acc1:acc)
{
if(acc1.rating!='hot')
{
delete acc;
}
}
}
}