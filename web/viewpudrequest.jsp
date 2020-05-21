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
       <script>alert('Attribute Verification Successful');</script>
       <%}%>
        <%
       if (request.getParameter("dmsg") != null) {%>
       <script>alert('Attribute Verification Failed');</script>
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
 		<li><a href="authorityhome.jsp">Home</a></li>
 		<li class="active"><a href="viewpudrequest.jsp">View PUD Request</a></li>
		<li><a href="authority.jsp">Logout</a></li>
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
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from pudrequest where status='Pending'");

%>
     <center> <table style="width:110%" border="1">
            <br><br><br><br>     

    <tr STYLE="background-color: skyblue;font-size: 15px;"> 
    
       <td>File Name</td>
       <td>User Name</td>
       <td>File Owner</td>
       <td>Doctor ID</td> 
       <td>Medical Researcher ID </td> 
       <td>Send Request </td>
       
     
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
     <td><a href="viewpudrequestact.jsp?fname=<%=rs.getString("file_name")%>&email=<%=rs.getString("user")%>&owner=<%=rs.getString("owner")%>
        &attribute=<%=rs.getString("attribute")%>&attribute1=<%=rs.getString("attribute1")%>">Verify </a> </td>
                 </tr>

         <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>

                            
                        </table>
                        </form>

                    
<br><br>
		<div class="content-main">
	
</div>			

</div>
</div>
	

</body>
</html>