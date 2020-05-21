
<%-- 
    Document   : viewresponse
    Created on : May 18, 2017, 2:07:43 PM
    Author     : RAMU
--%>
<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>   

<center><h1>View Response from Authority </h1></center>
<%
            
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from pudrequest");

%>
     <center> <table style="width:80%" border="2">
                 

    <tr> 
    
       <td><font color="red">File Name</td>
        <td><font color="red">User Email</td>
       <td><font color="red">Uploaded Date</td>
       <td><font color="red">File Owner</td>
       <td><font color="red">Attribute</td>
       <td><font color="red">Attribute1</td>
       <td><font color="red">Status</td>
       <td><font color="red">View Encrypted Text</td>
       
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>  
               <td><a href="pudviewcontent.jsp?fname=<%=rs.getString("file_name")%>&umail=<%=rs.getString("user")%>&owner=<%=rs.getString("owner")%>&status=<%=rs.getString("status")%>">View Encrypted Text</a> </td>
                </tr>

         <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        
        <br><br> <br><br>
        
       <center> <h1>View Response from Owner </h1></center>
        
        <%
            
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from pudrequest");

%>
     <center> <table style="width:80%" border="2">
                 

    <tr> 
    
       <td><font color="red">File Name</td>
        <td><font color="red">User Email</td>
       <td><font color="red">Uploaded Date</td>
       <td><font color="red">File Owner</td>
       <td><font color="red">Attribute</td>
       <td><font color="red">Attribute1</td>
       <td><font color="red">Status</td>
       <td><font color="red">View Text</td>
       
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td> 
               <td><a href="pudkeyresponse.jsp?fname=<%=rs.getString("file_name")%>&umail=<%=rs.getString("user")%>&owner=<%=rs.getString("owner")%>&status=<%=rs.getString("status")%>">View Text</a> </td>
                </tr>

         <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>

                            
                        </table>
          