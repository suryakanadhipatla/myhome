trigger duplicateaccouts on Account (before insert,before update) {
//list<account> accnew = new list<account>([select id,name from account where name IN =: trigger.new]);
//list<account> accold = new list<account>([select id,name from account where name IN =: trigger.old]);
list<account> accnew= trigger.new;
list<account> accold= trigger.old;
if(trigger.isinsert || trigger.isupdate)
{
for(account acc1:accnew){
for(account acc2:accold){
if(acc1.name == acc2.name)
{
acc1.adderror('name is already exist');
}
}
}
}
}