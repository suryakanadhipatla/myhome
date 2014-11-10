global class MyScheduleApex  implements Schedulable{

   global void execute(SchedulableContext sc)
   {
       
       Account acc=new Account();
       acc.name='jobAccount';
       acc.phone='654356';
       
       insert acc;
       
       
       
   }
    
    
}