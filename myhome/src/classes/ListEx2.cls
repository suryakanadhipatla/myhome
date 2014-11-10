public class ListEx2{
  List<Employee> empLst=new List<Employee>();  
    Public void processEmployeeLst()
    {
        String jsonString='{"empno":101,"empname":"raj","salary":10000}';
        
        Employee obj=(Employee)JSON.deserialize(jsonString, Employee.class);
        system.debug('empno:'+obj.empno);
        system.debug('empname:'+obj.empname);
        system.debug('emp sal:'+obj.salary);
    }
    
    
    public Class Employee{
      private integer empno;
      private String empname;  
      private integer salary;  
        
        
    }

}