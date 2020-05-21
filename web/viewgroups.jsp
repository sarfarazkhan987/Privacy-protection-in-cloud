

<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>         
                        
<%
   // String fname = request.getParameter("fname");
            
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from psd ");

%>

<center> <table style="width:80%" border="2">
            <br><br><br><br>     

    <tr> 
    
       <td>User Name</td>
       <td>Email</td>
       <td>Type</td>
       <td>Group</td>
       <td>Share</td>
       
     
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
               <td><a href="#?fname=<%=rs.getString("username")%>">Share</a> </td>
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