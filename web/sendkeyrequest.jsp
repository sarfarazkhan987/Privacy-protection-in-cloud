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
    String umail=session.getAttribute("username").toString();
    String email = request.getParameter("owner");
             
    //System.out.println("Trustee Values :" + fname + mail);
    //String[] data2 = request.getQueryString().split(",");
    //Random r = new Random();
   // int i = r.nextInt(10000 - 5000) + 5000;
    //String dkey = i+"";
    //String msg ="File Name : "+fname+"\nDecryption Key :"+dkey;
    try {
        Connection con;
        Statement st;
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int j = st.executeUpdate("insert into keyrequest(file_name,user,owner, status,dkey) values('" + fname + "','" + umail + "','" + email + "','Waiting','00000')");
        if (j != 0) {
            //Mail m= new Mail();
           // m.secretMail(msg, fname, umail);
            response.sendRedirect("viewresponse.jsp?msg=File Security Key Issued");
        } else {
            response.sendRedirect("viewresponse.jsp?msg1=Issued_failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>