<%@page import="privacy.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="privacy.Dbconnection"%>

<%
    String u;
    String k = request.getQueryString().toString();
    System.out.println("this is key " + k);
    String h[] = k.split(",");
    String username = h[0];
    String filename = h[1];
    String aggrekey = h[2];
    System.out.println("username " + username);
    System.out.println("filename " + filename);
    System.out.println("aggrkey " + aggrekey);
    Connection con = Dbconnection.getConnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
//id, userid, publickey_, aggrekey_, filename_
    ResultSet rst = st1.executeQuery("select * from psd where username='" + username + "'");
    if (rst.next()) {
        u = rst.getString("email");
        System.out.println("this is mailid " + u);
        Mail m = new Mail();
        String msg ="File Name : "+filename+"\n  Key :"+aggrekey;
        m.secretMail(msg, filename,u );
    }
    int i = st.executeUpdate("insert into fileshare(username, file_key, filename)values('" + username + "','" + aggrekey + "','" + filename + "')");
    if (i != 0) {
        response.sendRedirect("viewuploadedfiles.jsp?st=send_sucess");
    } else {
        response.sendRedirect("viewuploadedfiles.jsp?st1=error");
    }
%>
