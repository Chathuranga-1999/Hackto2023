
 
 function valid()
 {
 var n = document.getElementById("uname").value;
 var p = document.getElementById("pwd").value;
 
   if (n == "") 
   {
      alert("plese enter your name");
     return false;
     
   }
   if (p=="") 
   {
       alert("password must be filled out");
     return false;
   }
   if (n!=="" && p!=="") 
   {
      
     return true;
     
   }		
  }

       

