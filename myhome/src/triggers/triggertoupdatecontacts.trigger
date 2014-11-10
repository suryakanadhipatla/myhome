trigger triggertoupdatecontacts on Account (after update) {
If(trigger.isupdate)
{
contactstoupdate.contactsupdation(trigger.new);
}
}