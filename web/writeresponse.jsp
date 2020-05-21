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

    String fname = request.getParameter("fname");
    String mail = request.getParameter("mail");
    //System.out.println("Trustee Values :" + fname + mail);
    //String[] data2 = request.getQueryString().split(",");
   // Random r = new Random();
    //int i = r.nextInt(10000 - 5000) + 5000;
    //String dkey = i+"";
   // String msg ="File Name : "+fname+"\nDecryption Key :"+dkey;
    try {
        Connection con;
        Statement st;
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int j = st.executeUpdate("update writerequest set status='Granted' where file_name='" + fname + "'");
        if (j != 0) {
           // Mail m= new Mail();
           // m.secretMail(msg, fname, mail);
            response.sendRedirect("viewrequests1.jsp?msg=Request Sent to CSP");
        } else {
            response.sendRedirect("viewrequests1.jsp?msg1=failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>