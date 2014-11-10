trigger triggernotdelteifcontact on Account (before delete ) 
{
account[] acc= trigger.old;
for(account acc1:acc)
{
for(contact con:[select id,name from contact where accountid =:acc1.id])
{
if(con!=null)
acc1.adderror('cant delete the account');
acc1.adderror('sice contacts are existing');
}

}
}