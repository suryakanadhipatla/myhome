public class createstudent{
public list<student__c> s1;
public void studentmethod(list<college__c> acc)
{
for(college__c a:acc)
{
student__c s=new student__c();
s.name=a.name+'college';
s.collegename__c=a.id;
s.collegename__c=a.id;
s.hostel__c='JNTU hostel';
insert s;
}
//insert s1;
}
}