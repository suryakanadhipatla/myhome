public class RestClientEx{

    public void getMessage()
    {
        
         //construct an HTTP request
    HttpRequest req = new HttpRequest();
    req.setEndpoint('http://cheenath.com/tutorial/sfdc/sample1/data.txt');
    req.setMethod('GET');
    //req.setBody(body)    

    //send the request
    Http http = new Http();
    HttpResponse res = http.send(req);

    //check the response
    if (res.getStatusCode() == 200) {

      //update account
      /*Account acc = new Account(Id=id);
      acc.Description = res.getBody();
      update acc; */
    } else {
      System.debug('Callout failed: ' + res);
    } 
        
        
        
        
    }
    
}