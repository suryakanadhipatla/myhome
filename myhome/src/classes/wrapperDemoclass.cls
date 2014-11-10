public with sharing class wrapperDemoclass{

public list<helperclass> wrapobj{set;get;}
public wrapperDemoclass(apexpages.standardcontroller controller){
}
public list<helperclass> getwrapobj()
{
list<helperclass> wraplist= new list<helperclass>();
list<account> acc1= [select id,name,phone,rating from account LIMIT 5];
for(account a:acc1)
{
wraplist.add(new helperclass(a,false));
}
return wraplist;
}
public class helperclass{
public account acclist{set;get;}
public boolean checkbox;
public helperclass(account acc,boolean x){
acclist=acc;
checkbox=x;
}
}
}