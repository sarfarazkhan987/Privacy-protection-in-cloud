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
<%
           if (request.getParameter("msga") != null) {%>
       <script>alert('Read Request Sent');</script>
       <%}
           if (request.getParameter("msg") != null) {%>
       <script>alert('Read Request Failed');</script>
       <%}
           if (request.getParameter("msg1") != null) {%>
       <script>alert('Write Request Sent');</script>
       <%}
           if (request.getParameter("msgg1") != null) {%>
       <script>alert('Write Request Failed');</script>
       <%}
        
       %>
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
 		<li class="active"><a href="psdviewfiles.jsp">View Files </a></li>
 		<li><a href="viewresponse.jsp">View Response(Read)</a></li>
                <li><a href="viewwriteresponse.jsp">View Response(Write) </a></li>
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
                        
  <%@page import="privacy.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>         
                        
<%
            
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from upload");

%>
<center><h3>View Files</h3></center>

     <center> <table style="width:90%" border="2">
            <br>
    <tr STYLE="background-color: skyblue;font-size: 15px;"> 
    
       <td>File Name</td>
       <td>File Owner</td>
       <td>Uploaded Date</td>    
       <td>Request for Read</td>
       <td>Request for Write</td>
       
     
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(4)%></td>
               <td><a href="psdviewfilesact.jsp?fname=<%=rs.getString("filename")%>&email=<%=rs.getString("email")%>">Request for Read</a> </td>
               <td><a href="psdviewfilesact1.jsp?fname=<%=rs.getString("filename")%>&email=<%=rs.getString("email")%>">Request for Write</a> </td>
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