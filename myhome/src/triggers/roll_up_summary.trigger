trigger roll_up_summary on Account (before insert,before delete) {
if(trigger.isinsert)
{
list<account> acc= trigger.new;
integer x= acc.size();
//list<account> accold= trigger.old;
list<account> num = new list<account>();
//integer y= accold.size();
//y=y+x;
list<account> z = [SELECT id,count_of_contacts__c FROM account];
for(account acc3:z)
{
acc3.count_of_contacts__c =x;
num.add(acc3);
}
insert num;
}
}