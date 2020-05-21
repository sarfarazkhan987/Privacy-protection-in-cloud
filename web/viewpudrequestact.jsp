
                        
  <%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>         
                        
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
     ResultSet rs1 = null;
    String fname = request.getParameter("fname");
   Statement st1 = null;
   
   String email = request.getParameter("email");
  //String polatt1 = "D:/keypolicy_attri.txt";
    //String skey = request.getParameter("skey");
    try {
            
      
        con = Dbconnection.getConnection();
        st = con.createStatement();
         st1 = con.createStatement();
        rs = st.executeQuery("select * from pud where email='" + email + "'");
          rs1 = st1.executeQuery("select * from upload where filename='" + fname + "'"); 
       
        
        if (rs.next()) {
            
           // String owner = rs.getString("owner");
            if(rs1.next()) {
            if ( rs1.getString("attribute").equals(rs.getString("attribute")) && rs1.getString("attribute1").equals(rs.getString("attribute1")))
            {
               session.setAttribute("filename", fname);
                session.setAttribute("email", email);
                response.sendRedirect("verifyact.jsp?" + fname + "" );
            }
            else 
            {
                response.sendRedirect("viewpudrequest.jsp?dmsg=vefication failed attributes not matched");
            }
            }
            
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>