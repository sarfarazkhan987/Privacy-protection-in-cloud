<html>

<style>
body {font-family: "Lato", sans-serif;}

ul.tab {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
     border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Float the list items side by side */
ul.tab li {float: left;}

/* Style the links inside the list items */
ul.tab li a {
    display: inline-block;
    color: black;
    text-align: right;
    padding: 14px 130px;
    text-decoration: none;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of links on hover */
ul.tab li a:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
ul.tab li a:focus, .active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
  
    border-top: none;
}
</style>

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
       <script>alert('Key Sent to Registered Email ID');</script>
       <%}%>
        <%
       if (request.getParameter("m1") != null) {%>
       <script>alert('Key Sent to Registered Email ID');</script>
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
 		<li><a href="csphome.jsp">Home</a></li>
 		<li class="active"><a href="cspviewrequests.jsp">View PSD Requests</a></li>
		<li><a href="csp.jsp">Logout</a></li>
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
<p></p>

<ul class="tab">
   <center>
    <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Credit')">View Requests (Read) </a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Debit')">View Requests (Write)</a></li>
 </center>
</ul>
<br>
<center>
    
    <div id="Credit" class="tabcontent">
        <br> 
        <center><h1><font color="red">View Requests (Read) </font></h1></center>
       <br>
     <%
            
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from request where status = 'Granted'");

%>

<center> <table style="width:90%" border="2">
            <br>

    <tr STYLE="background-color: skyblue;font-size: 15px;">
    
       <td>File Name</td>
       <td>Requested By</td>
       <td>File Owner</td>
       <td>Status</td>
       <td>Response</td>
       
     
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
               <td><a href="response_1.jsp?fname=<%=rs.getString("file_name")%>&mail=<%=rs.getString("user")%>">Send Key</a> </td>
        </tr>

         <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>

    </div>
<div id="Debit" class="tabcontent">
     <br>
     <center> <h1><font color="red"> View Requests (Write) </font></h1></center>
         <br>
        <%
            
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from writerequest where status = 'Granted'");

%>

<center> <table style="width:90%" border="2">
            <br>     

    <tr STYLE="background-color: skyblue;font-size: 15px;">
    
       <td>File Name</td>
       <td>Requested By</td>
       <td>File Owner</td>
       <td>Status</td>
       <td>Response</td>
       
     
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
               <td><a href="response2.jsp?fname=<%=rs.getString("file_name")%>&mail=<%=rs.getString("user")%>">Send Key</a> </td>
        </tr>

         <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>

</div>
        
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>

<br><br>
		<div class="content-main">
	
</div>			

</div>
</div>
	

</body>
</html>









