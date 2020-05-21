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

                           String[] filedetails = request.getQueryString().split(",");
            String fname = null, fkey = null;
            //String email = null;
            InputStream is = null;
           
//long startTime = System.currentTimeMillis();
   //System.out.println(" this is startTime time" +startTime);

            Connection con = Dbconnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rt = st.executeQuery("select * from upload where filename='" + filedetails[0] + "' AND email='" + filedetails[1] + "'");
            if (rt.next()) {
                fname = rt.getString("filename");
                // email = rt.getString("email");
                fkey = rt.getString("file_key");
                is = (InputStream) rt.getAsciiStream("data");
            } else {
                out.println("error while retreiving data");
            }
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            String temp = null;
            StringBuffer sb = new StringBuffer();
            while ((temp = br.readLine()) != null) {
                sb.append(temp + "\n");
            }
            String content = new decryption().decrypt(sb.toString(), fkey);
                        %>
                        <form name="f2" action="modifyaction.jsp" method="post" style="margin-right:  50px">
                               
                           <td>File Name</td><input type="text" value="<%=fname%>" name="fname" style="margin-left: 58px;width: 250px" /><br /><br />
                            <label style="font-size: 17px;margin-left: -274px">File Content : </label></br>
                        <textarea cols="40" rows="10" name="content" value="<%=content%>"  style="margin-left: 200px"><%=content%></textarea><br /><br />
                            
                            <input type="submit" value="Modify" class="button" style="margin-left: 10px;margin-top: -10px;width: 100px;" />
                        </form> 
                        <br>
                            <a href="viewwriteresponse.jsp">Back</a>
				</div>
                   	</div>				</div>
            <div id="footer"><br /><br />
                <center></center>
            </div>
        </div>
    </body>
</html>

