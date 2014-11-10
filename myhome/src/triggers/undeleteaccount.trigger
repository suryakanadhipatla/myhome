trigger undeleteaccount on Account (after undelete) 
{
list<account> acc2=new list<account>();
list<account> acc3= [select id,name ,phone,description from account where id IN:trigger.new];
for(account acc1:acc3)
{
acc1.description=acc1.name+' '+acc1.phone;
acc2.add(acc1);
}
update acc2;
}