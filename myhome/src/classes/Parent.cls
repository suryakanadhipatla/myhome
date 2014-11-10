public virtual class Parent{
    
  public string name;  
  public integer num;
  public integer num1;  
    
    Public Parent()
    {
         system.debug('default constructor');   
        
    }
    
    public Parent(String name,integer num)
    {
         this();
        system.debug('two arg constructor');
      this.name=name;
       
        this.num=num;
        
    }
     public Parent(integer num,String name)
    {
         this();
        system.debug('two arg constructor');
      this.name=name;
       
        this.num=num;
        
    }
    
     public Parent(String name,integer num,integer num1)
    {
       this(name,num); 
    system.debug('three arg constructor');
       this.num1=num1; 
    }
    
    public virtual void display()
    {
        system.debug('name:'+name);
         system.debug('num:'+num);
    }
}