<!DOCTYPE HTML>
<html>
<head>
<title>Privacy Protection based Access Control Scheme in Cloud-based Services</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" media="all" />
<link rel="stylesheet" href="css/bjqs.css">
<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script src="js/bjqs-1.3.min.js"></script>
<script src="js/libs/jquery.secret-source.min.js"></script>
	
    <script class="secret-source">
        jQuery(document).ready(function($) {

          $('#banner-fade').bjqs({
            height      : 400,
            width       :1000,
            responsive  : true
          });

        });
      </script>
</head>
<body>
<div class="header-bg">
<div class="wrap">
	<div class="logo">
  		
 	</div>
	<div class="search">
            <p><font size="6" color="white"> Privacy Protection based Access Control Scheme <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Cloud-based Services</font><p>
            
	</div>
   <div class="clear"></div>
</div>
</div>
	<div class="clear"></div>
<div class="nav1-bg">
<div class="wrap">
	<div class="nav"> 
 	<ul>
 		<li><a href="psd.jsp">Home</a></li>
 		<li><a href="psdviewfiles.jsp">View Files </a></li>
 		<li><a href="viewresponse.jsp">View Response(Read)</a></li>
                <li class="active"><a href="viewwriteresponse.jsp">View Response(Write) </a></li>
		<li><a href="user.jsp">Logout</a></li>
 	</ul>      
  	</div>
  	<div class="clear"></div>
</div>
</div>
	<div class="clear"></div>
<div class="body-content">
<div class="wrap">
	<div class="slider">
	<div id="container">
 	<div id="banner-fade">
      <ul class="bjqs">
      <li><img src="img/slide1.jpg" alt="" ></li>
      <li><img src="img/slide2.jpg" alt="" ></li>
      <li><img src="img/slide3.jpg" alt="" ></li> 
      </ul>
      <!-- end Basic jQuery Slider -->
    </div>
	</div>
	</div>
				
			<br>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="privacy.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

                   <%

 
    String fname = request.getParameter("fname");
                          String owner = request.getParameter("owner");
                         session.setAttribute("fname", fname);
                        session.setAttribute("owner", owner);
     String status = request.getParameter("status");
    //String mail = request.getParameter("request");
     
     if ( status.equals("Waiting"))
     {
     out.println("<center>To access This file Get Key from CSP </center>");
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
           rs = st.executeQuery("SELECT *FROM writerequest where status='Granted' and owner = '"+owner+"' and file_name ='"+fname+"'" );

                    %>
                    <center> 
                        <h3>Key Verification System</h3>
                        <br><br>
                            <form action="verify2.jsp" method="post">
                                <label>File Name  :</label><input type="text" name="fname" value="<%=fname%>" readonly="" style="margin-left: 30px" class="textbox"/><br /><br />
                                <label>Decryption Key :</label><input type="text" name="dkey" required="" class="textbox"/><br /><br />
                                <input type="submit" value="View" class="button" /><br /><br />
                            </form>
                    </center>
                                 <%
                         
     
                         } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
     }
                            %>
                                <br />
               