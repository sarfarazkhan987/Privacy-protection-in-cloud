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
        rs = st.executeQuery("select * from writerequest where file_name='" + fname + "' AND dkey='" + dkey + "'");
        if (rs.next()) {
            String owner = rs.getString("owner");
          response.sendRedirect("viewcontent1.jsp?" + fname + "," + owner);
            
        } else {
            
                       response.sendRedirect("viewwriteresponse.jsp?msg=Key_Mismatched");
        
          
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>