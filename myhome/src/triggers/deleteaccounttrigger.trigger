trigger deleteaccounttrigger on Account (after insert) {
if(trigger.isinsert)
{
deleteaccounttriggerclass.deleteaccounttriggerclassmethod(trigger.new);
}

}