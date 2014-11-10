global class myScheduleApex1 implements schedulable{

    /* URL : http://www.salesforce.com/us/developer/docs/apexcode/Content/apex_scheduler.htm
     * 
     * String CRON_EXP = '0 0 21 02 5 ? 2014'; 
String jobId=System.schedule('testBasicScheduledApex',CRON_EXP, new myScheduleApex1()); */
    
     global void execute(SchedulableContext sc)
   {
       
       Account acc=new Account();
       acc.name='jobAccount';
       acc.phone='654356';
       
       insert acc;
       
     //  String CRON_EXP = '0 0 21 02 5 ? 2014'; 
    //String jobId=System.schedule('testBasicScheduledApex',CRON_EXP, new myScheduleApex1());
       
       
   }
    
}