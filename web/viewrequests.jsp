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
    
    <%
       if (request.getParameter("msg") != null) {%>
       <script>alert('Request Sent to CSP');</script>
       <%}%>
       <%
       if (request.getParameter("msg2") != null) {%>
       <script>alert('Rejected');</script>
       <%}%>
    
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
 		<li><a href="viewuploadedfiles.jsp">Send Keys</a></li>
                <li class="active"><a href="viewrequests.jsp"> Requests(Read) </a></li>
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

<%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>         
                        
<%
            
    try{
   String email = session.getAttribute("username").toString();
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from request where status = 'Waiting' and owner = '"+email+"'");

%>

<center> <table style="width:110%" border="2">
            <br><br><br><br>     

    <tr STYLE="background-color: skyblue;font-size: 15px;"> 
    
       <td>File Name</td>
       <td>Requested By</td>
       <td>Date</td>
       <td>File Owner</td>
       <td>Status</td>
       <td>Response</td>
       <td>Reject</td>
       
     
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td> 
               <td><a href="response.jsp?fname=<%=rs.getString("file_name")%>&mail=<%=rs.getString("user")%>">Send to CSP</a> </td>
               <td><a href="rejectresponse.jsp?fname=<%=rs.getString("file_name")%>&mail=<%=rs.getString("user")%>">Reject</a> </td>
        </tr>

         <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>

                  <br><br>
		<div class="content-main">
	
</div>			

</div>
</div>
	

</body>
</html>