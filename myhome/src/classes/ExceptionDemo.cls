public class ExceptionDemo{
   
  public integer division(integer num1,integer num2) 
  {
       integer num3;
     try
     {
      system.debug('before division');
           num3=num1/num2;
       system.debug('after division');
       
      //  List<account> acclst= [select name from account where name='aFsfvdfvfa'];
         
         //system.debug('lst size--'+acclst.get(0));
      //  Account acc=new Account();
         
       //  insert acc;
         
  throw new MyException();         
     }
      catch(Exception e)
      {
          system.debug('exception ::'+e.getMessage());
          system.debug('e'+e.getTypeName());
          
      }    
         
      finally
      {
       system.debug('finally block');   
      }
          
          
      
      
      return num3;
  }    
    
    
    
    

}