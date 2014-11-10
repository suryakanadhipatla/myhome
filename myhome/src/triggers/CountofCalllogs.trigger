trigger CountofCalllogs on Task (after update,after insert) {

list<task> tsk= [SELECT subject,accountid FROM TASK where ID IN :trigger.new];
account acc=new account();

for(TASK tsk1:tsk)
{

acc=[SELECT Call_Log_Count__c from account where id=:tsk1.accountid];
acc.Call_Log_Count__c+=tsk.size();
}
update acc;
}