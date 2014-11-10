public with sharing class SimpleDemoController1 {
Public account accRec {get;set;}
    public SimpleDemoController1(ApexPages.StandardController controller) {
accRec = [select id,name,accountnumber,annualrevenue from account where id=:ApexPages.CurrentPage().getparameters().get('id')];
    }

}