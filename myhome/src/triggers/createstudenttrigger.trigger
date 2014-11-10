trigger createstudenttrigger on college__c (after insert) {
If(trigger.isinsert)
{

createstudent studentobj= new createstudent();
studentobj.studentmethod(trigger.new);
}
}