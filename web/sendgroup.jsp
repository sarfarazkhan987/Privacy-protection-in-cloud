<%@page import="privacy.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="privacy.Dbconnection"%>
<%
    int count = 0;
    String group = request.getParameter("select");
    String val1 = request.getParameter("get");
    String[] val = val1.split(",");
    String file = val[0];
    String agg = val[1];

//    ArrayList<String> mail = new ArrayList<String>();
    try {
        String ml = null;
        Connection con = Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from psd where groups='" + group + "'");
       
        while (rs.next()) {
//          mail.add(rs.getString("mail"));
            ml = rs.getString("email");
            System.out.println("this is mailid " + ml);
            Mail m = new Mail();
            String msg ="File Name : "+file+"\n  Key :"+agg;
        m.secretMail(msg, file,ml );
            count++;
            System.out.println("count val :" + count);
            response.sendRedirect("viewuploadedfiles.jsp?mail_sent_Success");
        }

    } catch (Exception e) {
        e.printStackTrace();
    }


%>