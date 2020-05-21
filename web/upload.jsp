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
           if (request.getParameter("msg1") != null) {%>
       <script>alert('File Succefully Uploaded');</script>
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
 		<li><a href="ownerhome.jsp">Home</a></li>
 		<li class="active"><a href="upload.jsp">Upload File </a></li>
 		<li><a href="viewuploadedfiles.jsp">Send Keys</a></li>
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
                             <p align="justify">
        <center><p><font color="black" size="5"> Upload File Here</font></p></center><br/>		
        <form name="f2" action="Upload" method="post" enctype="multipart/form-data"style="margin-right:  50px">
                   
        <center><table width="421">
        <tr>
        <td width="191" height="43"><font color="black">File Name </td>
        <td width="218"><input name="fname" required="" placeholder="Enter your File Name" /></td>
        </tr>
        <tr>
        <td height="43"><font color="black">Doctor ID </td>
        <td width="218"><input type="text" name="attribute" required="" placeholder="Attribute" /></td>
        </tr>
        <tr>
        <td height="43"><font color="black"> Medical Researcher ID </td>
        <td><input name="attribute1" required="" placeholder="Attribute1"/></td>
        </tr>
        <tr>
        <td height="43"><font color="black">File Browse </td>
        <td><font color="black"><input type="file" name="file" required=""/></td>
        </tr>
         <tr>
        <td height="43" rowspan="3">
        <p>&nbsp;</p></td>
        <td align="left" valign="middle"> <p>&nbsp;
        </p>
        <p>
        <input name="submit" type="submit" value="Upload" />
        </p>
        <div align="right">
        </div></td>
        </tr>
        </table>
        </form>
        </p>
    <br>
    </div>
		<div class="content-main">
	
</div>			

</div>
</div>
	

</body>
</html>