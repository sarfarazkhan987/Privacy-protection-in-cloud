<%@page import="privacy.Ftpcon"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="privacy.encryption"%>
<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
   
    String content = request.getParameter("content");
    String fname = request.getParameter("fname");
    
    KeyGenerator keyGen = KeyGenerator.getInstance("AES");
    keyGen.init(128);
    SecretKey secretKey = keyGen.generateKey();
    System.out.println("secret key:" + secretKey);
    
    byte[] be = secretKey.getEncoded();
    String skey = Base64.encode(be);
    System.out.println("converted secretkey to string:" + skey);
    String endata = new encryption().encrypt(content, secretKey);
    System.out.println("The Encrypted Text "+content);
    File f = new File("C:\\Users\\sarfa\\OneDrive\\Desktop\\Input\\"+fname);
    
                                FileWriter fw = new FileWriter(f);
                                fw.write(endata);
                                fw.close();
                                Ftpcon ftpcon = new Ftpcon();
                                ftpcon.upload(f, fname);
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("update upload set data='"+endata+"' , file_key = '"+skey+"' where filename='"+fname+"' ");
        if (i != 0) {
            response.sendRedirect("viewwriteresponse.jsp?momsg=success");
        }
        else
        {
            response.sendRedirect("downloadact1.jsp?moemsg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
