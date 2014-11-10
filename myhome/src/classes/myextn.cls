public with sharing class myextn {
public string mypage {set;get;}
    public myextn(ApexPages.StandardController controller) {

    }
public list<SelectOption> mypage1 {get;set;}

 public List<SelectOption> getmypage1()
 {
 list<selectoption> selopp= new list<selectoption>();
 selopp.add(new selectoption('raju', 'raju'));
selopp.add(new selectoption('gopi', 'gopi'));
selopp.add(new selectoption('venkat', 'venkat'));
return selopp;
}
}