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
//    String mail = request.getParameter("email");
    //String size = request.getParameter("size");
    //System.err.println(fname + mail + size);
    try {
        Connection con;
        Statement st;
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int j = st.executeUpdate("insert into writerequest(file_name,user,owner, status,dkey) values('" + fname + "','" + umail + "','" + email + "','Waiting','00000')");
        if (j != 0) {

            response.sendRedirect("psdviewfiles.jsp?msg1=Request_sent_to_User");
        } else {
            response.sendRedirect("psdviewfiles.jsp?msgg1=Request_failed");
        }



    } catch (Exception ex) {
        response.sendRedirect("psdviewfiles1.jsp?msgb=You_hava_already_given_request");
        ex.printStackTrace();
    }
%>