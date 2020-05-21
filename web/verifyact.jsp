<%-- 
    Document   : response
    Created on : May 18, 2017, 1:16:54 PM
    Author     : RAMU
--%>
<%@page import="privacy.Mail"%>
<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.util.Random"%>
<%

    String fname = request.getQueryString();
  
     
   // String mail = request.getParameter("mail");
    
    try {
        Connection con;
        Statement st;
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int j = st.executeUpdate("update pudrequest set status='Verified' where file_name='" + fname + "'");
        if (j != 0) {
          
            response.sendRedirect("viewpudrequest.jsp?msg=Attributes_Verification_Successful ");
        } else {
            response.sendRedirect("viewpudrequest.jsp?msg1=Verification_failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>