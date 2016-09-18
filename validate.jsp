<%-- 
    Document   : validate
    Created on : Sep 18, 2016, 3:21:30 PM
    Author     : Karthick
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <% 
        String userName=request.getParameter("user");
         String pwd=request.getParameter("pwd");
         String hidden=request.getParameter("hidden1");
          String hidden2=request.getParameter("hidden2");
          
       long start=Long.parseLong(hidden);
       long stop=Long.parseLong(hidden2);
       
 
   %>
   
        <h1>
            <%
                
            out.println(userName);
         %>
         <br>
         <%
           out.println(pwd);
           %>
          

           <%
               
 
   
 
      
     
      int st = (int)start;
     
    
    
      int sp= (int) stop;
     
    int speed=(sp-st)/100;
    
   
    out.println("Typing Speed of the password is: "+speed);
    %>
    <br>
    <%
     char stuff='*';
     char[] password=pwd.toCharArray();
     String result="";
     
     for(int i=0;i<password.length;i++){
         
         result+=password[i];
         for(int j=0;j<speed/password.length;j++)
         {
             result+=stuff;
         }
    
     }
     
     if((speed/password.length)*password.length!=speed){
     
         int tally=speed-((speed/password.length)*password.length);
         for(int ii=0;ii<tally;ii++)
         {
         result+=stuff;
         }
      
     }
     
    out.println("password    "+result); 
    %>
    <br>
   
        
            
           
            
        </h1>
    </body>
</html>
