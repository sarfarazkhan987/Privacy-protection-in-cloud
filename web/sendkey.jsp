<%-- 
    Document   : sendkey
    Created on : May 30, 2017, 12:29:50 PM
    Author     : RAMU
--%>


                        
  <%@page import="privacy.Mail"%>
<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>         
                        
<%

    String fname = request.getParameter("fname");
    String mail = request.getParameter("mail");
       
   
    try {
   
        
         String filekey = null;

        Connection con;
        Statement st;
        ResultSet rs = null;
        con = Dbconnection.getConnection();
        st = con.createStatement();
          Statement st1 = con.createStatement();
        rs = st1.executeQuery("select file_key from upload where filename='" + fname + "'");
        while(rs.next())
        {
        filekey = rs.getString("file_key");
       
        }
        int j = st.executeUpdate("update pudrequest set dkey='" + filekey + "' where file_name='" + fname + "' AND user='" + mail + "'");
        if (j != 0) {
            Mail m= new Mail();
             String msg ="File Name : "+fname+"\nDecryption Key :"+filekey;
            m.secretMail(msg, fname, mail);
            response.sendRedirect("pudkeyrequest.jsp?msg=Key Sent");
        } else {
            response.sendRedirect("pudkeyrequest.jsp?msg1=Issued_failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>