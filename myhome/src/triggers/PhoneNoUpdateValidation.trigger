trigger PhoneNoUpdateValidation on Contact (before update) {

  
  /*for(Contact con:Trigger.new)
  {
     
     Contact oldContact=Trigger.oldMap.get(con.id);
     
     if(con.phone!=oldContact.phone)
     {
        con.phone.addError('Phone updation is invalid..');
     }
     
  
  }
    */
    if(StatusFlag.flag==true)
    {
    Contact con=Trigger.new[0];
     con.LeadSource='Other';
   List<Contact> conlst= [select id,name,LeadSource from Contact where  id!=:con.id ];
    
    for(Contact con1:conlst)
    {
        con1.LeadSource='Other';
    
    }
    
    StatusFlag.flag=false;
    
    update conlst;
    
   
}

}