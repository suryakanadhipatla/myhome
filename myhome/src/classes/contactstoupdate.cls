public class contactstoupdate {
public static void contactsupdation(account[] acc)
{
list<contact> tempcon=new list<contact>(); 
for(account acc1:acc)
{
list<contact> con= [SELECT id,name FROM contact WHERE accountid =:acc1.id];
for(contact c:con)
{
c.phone=acc1.phone;
tempcon.add(c);
}
}
if(!tempcon.isempty())
update tempcon;

}      
}