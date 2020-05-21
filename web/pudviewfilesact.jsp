<%@page import="privacy.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="privacy.Dbconnection"%>
<%

    String fname = request.getParameter("fname");
    String umail=session.getAttribute("username").toString();
    String email = request.getParameter("email");
   String attribute = request.getParameter("attribute");
    String attribute1 = request.getParameter("attribute1");
    //System.err.println(fname + mail + size);
    try {
        Connection con;
        Statement st;
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int j = st.executeUpdate("insert into pudrequest(file_name,user,owner,attribute,attribute1, status,dkey) values('" + fname + "','" + umail + "','" + email + "', '" + attribute + "','" + attribute1 + "','Pending','00000')");
        if (j != 0) {

            response.sendRedirect("pudviewfiles.jsp?msga=Request_sent_to_User");
        } else {
            response.sendRedirect("pudviewfiles.jsp?msg=Request_failed");
        }



    } catch (Exception ex) {
        response.sendRedirect("pudviewfiles.jsp?msgb=You_hava_already_given_request");
        ex.printStackTrace();
    }
%>