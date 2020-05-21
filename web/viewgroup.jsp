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

<div class="container">
                        <form action="sendgroup.jsp" method="post">
                            <br><label style="font-family: monospace;font-size: x-large;color: blue;margin-left: -10px">Choose the Specific Group to Share the file:</label><br><br><br>
                            <select style="height: 30px;width: 210px;margin-left: 120px" name="select">
                                <option value="-1">Choose the Group</option>
                                <%
                                    String get = request.getQueryString();
                                    System.out.println("Query String Data " + get);
                                    String sql = "select * from groups";
                                    Connection con = Dbconnection.getConnection();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery(sql);
                                    while (rs.next()) {
                                        String grp = rs.getString("groupname");
                                %>
                                <option value="<%=grp%>"><%=grp%></option>
                                <%
                                    }
                                %>
                            </select><br><br><br>
                            <input type="hidden" value="<%=get%>" name="get"></input>
                            <input style="margin-left: 160px" type="submit" value="Share with Group"></input>
                        </form>

                    </div>
                            <div class="content-main">
	
</div>			

</div>
</div>
	

</body>
</html>