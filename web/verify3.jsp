<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String fname = request.getParameter("fname");
  
    String dkey = request.getParameter("dkey");
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from pudrequest where file_name='" + fname + "' AND dkey='" + dkey + "'");
        if (rs.next()) {
            String owner = rs.getString("owner");
          response.sendRedirect("pudviewcontent1.jsp?" + fname + "," + owner);
            
        } else {
            
                       response.sendRedirect("pudviewresponse.jsp?msg=Key_Mismatched");
        
          
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>