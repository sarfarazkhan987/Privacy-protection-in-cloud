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
 		<li><a href="ownerhome.jsp">Home</a></li>
 		<li><a href="upload.jsp">Upload File </a></li>
 		<li class="active"><a href="viewuploadedfiles.jsp">Send Keys</a></li>
                <li><a href="viewrequests.jsp"> Requests(Read) </a></li>
                <li><a href="viewrequests1.jsp">Requests(Write) </a></li>
                <li><a href="pudkeyrequest.jsp">PUD Requests</a></li>
		<li><a href="owner.jsp">Logout</a></li>
 	</ul>      
  	</div>
  	<div class="clear"></div>
</div>
</div>
	<div class="clear"></div>
<div class="body-content">
<div class="wrap">
	
				
			<br>

<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>         
                        
 <center> <table style="border-style: solid;margin-left: -105px;width: 900px">
                            <tr style="background-color: skyblue;font-size: 20px;font-family: monospace;font-weight: bold;">
                                  
                                <td style="text-align: center;">User Name</td>
                                <td style="text-align: center;">Mail ID</td>
                                <td style="text-align: center;">Group</td>
                                <td style="text-align: center;">Share it</td>
                            </tr>
                            <%
                                String k = request.getQueryString().toString();
                                String id, name, mail, group, like = null;
                                String sql = "select * from psd";
                                Connection con = Dbconnection.getConnection();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                                    name = rs.getString("username");
                                    mail = rs.getString("email");
                                    group = rs.getString("groups");
                            %>
                            <tr>
                                
                                <td style="text-align: center"><%=name%></td>
                                <td style="text-align: center;"><%=mail%></td>
                                <td style="text-align: center;"><%=group%></td>
                                <td style="text-align: center;"><a style="color: green" href="send.jsp?<%=name%>,<%=k%>">Share with User</a></td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
</center>

