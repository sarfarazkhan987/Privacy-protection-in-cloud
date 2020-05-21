<html>
    <body bgcolor="skyblue">

<%@page import="privacy.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="privacy.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<center><p></p></center>
                    <center> 
                        <%

 
    String fname = request.getParameter("fname");
    String owner = request.getParameter("owner");
     String status = request.getParameter("status");
    
     
     if ( status.equals("Pending"))
     {
     out.println("<font size='6'><body bgcolor='skyblue'> To access This file Get Request from Authority<br><br><a href='pudviewresponse.jsp'>Back</a></font>");
     }
     else {
     Connection con;
        Statement st;
        ResultSet rs;
          ResultSet rs1;
             try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        //rs = st.executeQuery("SELECT distinct * FROM `file`,`request` where request='"+mail+"' AND  file.filename='"+fname+"' AND file.filename = request.file_name ;");
           rs = st.executeQuery("SELECT *FROM pudrequest where status='Verified' and owner = '"+owner+"' and file_name ='"+fname+"'" );

                       while (rs.next()) {
            String fname1=rs.getString("file_name");
            // String key=rs.getString("skey");
            // System.out.println(trust);
           rs1 = st.executeQuery("SELECT data FROM upload where filename='"+fname1+"'");
           //  System.out.println(key);
                         while ( rs1.next()) {
                           String data =  rs1.getString("data");  
                           System.out.println("datasssssssssssssssssssssssss"+data);%>
                           
                            <td>File Name :</td><input type="text" value="<%=fname1%>" readonly="" name="fname" style="margin-left: 58px;width: 250px" /><br /><br />
                            <label style="font-size: 17px;margin-left: -274px">File Content : </label></br>
                        <textarea cols="40" rows="10" name="data" value="<%=data%>" readonly="" style="margin-left: 200px"><%=data%></textarea><br /><br />
                              <td>Owner :</td><input type="text" value="<%=owner%>" readonly="" name="owner" style="margin-left: 98px;width: 250px" /><br /><br />
                            <br>
                            <br><br> <a href="pudviewresponse.jsp">Back</a>
                          <%
                         }
                       }
                         } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
     }
                            %>
				</div>
                   	</div>				</div>
            <div id="footer"><br /><br />
                <center></center>
            </div>
        </div>
    </body>
</html>

