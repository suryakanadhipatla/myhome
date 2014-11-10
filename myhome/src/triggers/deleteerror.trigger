trigger deleteerror on Account (before delete) {
list<account> acclst = new list<account>();
acclst = [SELECT owner.name FROM account];



}