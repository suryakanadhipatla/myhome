public with sharing class searchcon {

    public String s1 { get; set; }

    public string s{get;set;}

list<Account> a {get;set;}
 
public void search()
{
a = new list<account>();
a = [SELECT Id, Name from Account where Name LIKE :(s+'%')];
}
}