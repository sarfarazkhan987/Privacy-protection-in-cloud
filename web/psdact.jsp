<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.*"%>

<%@ page session="true" %>
<%
        String email = request.getParameter("username");
    System.out.println(email);
    String password = request.getParameter("password");
    System.out.println(password);
    
    try{
       
        String user=null;
        //String password=null;
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from psd where email= '"+email+"' and Password='"+password+"'");
       if(rs.next())
        {
            
           user = rs.getString(2);
		   session.setAttribute("username",email);
                   
		   System.out.println("User:"+user);
                   
			response.sendRedirect("psd.jsp");
        }
       else 
        {
            response.sendRedirect("user.jsp?m1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in emplogact"+e.getMessage());
    }
%>