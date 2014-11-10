@RestResource(urlMapping='/Account1/*')
global class RestServiceEx1{
  @HttpDelete
    global static void doDelete() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account = [SELECT Id FROM Account WHERE Id = :accountId];
        delete account;
    }
  
    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website,rating FROM Account WHERE Id = :accountId];
        return result;
    }
  
  @HttpPost
    global static String doPost(String nm,
        String phone, String website) {
        Account account = new Account();
        account.Name = nm;
        account.phone = phone;
        account.website = website;
        insert account;
        return account.Id;
    }
}