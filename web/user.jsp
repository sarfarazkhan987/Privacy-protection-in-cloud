<!DOCTYPE html>
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
    padding: 14px 165px;
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
    border: 1px solid #ccc;
    border-top: none;
}
</style>
<head>
<title>Access Control Scheme For Providing Security in Cloud Based Services</title>
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
           if (request.getParameter("message") != null) {%>
       <script>alert('PSD Registration Successful');</script>
       <%}
            if (request.getParameter("msg") != null) {%>
       <script>alert('PUD Registration Successful');</script>
       <%}
        
       %>
<body>
<div class="header-bg">
<div class="wrap">
	<div class="logo">
  		
 	</div>
	<div class="search">
            <p><font size="6" color="white"> Access Control Scheme For Providing Security <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Cloud-based Services</font><p>
            
	</div>
   <div class="clear"></div>
</div>
</div>
	<div class="clear"></div>
<div class="nav1-bg">
<div class="wrap">
	<div class="nav"> 
 	<ul>
 		<li><a href="index.jsp">Home</a></li>
 		<li><a href="owner.jsp">Owner </a></li>
 		<li class="active"><a href="user.jsp">User</a></li>
 		<li><a href="csp.jsp">CSP</a></li>
		<li><a href="authority.jsp">Authority</a></li>
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
 
<p></p>

<ul class="tab">
   <center>
    <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Credit')">PSD Login</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Debit')">PUD Login</a></li>
 </center>
</ul>

<center>
    
    
    
<div id="Credit" class="tabcontent">
    <br>
  <center><p><font size="6" color="black">PSD Login</font></p></center>

                    <form action="psdact.jsp" method="post" id="psdact" >
                        <br><br>
                        <center>


                            <table>
                                <tr>
                                    <td align="right"><font size="4" color="black"> User Name: </font></td><td> <input type="text" align="left" size="25" name="username" placeholder="Email" required /></td>
                                </tr>
                                <tr></tr> <tr></tr> <tr></tr>



                                <tr>
                                    <td align="right"><font size="4" color="black"><br> Password:</font> </td><td> <br><input type="password" align="left" size="25" name="password" placeholder="Password" required /></td>
                                </tr>
                                <tr></tr> <tr></tr> <tr></tr>

                                
                                <tr>
                                    <td>
                                        <font size="3" color="green"><br> <input type="submit" form="psdact" align="right" value='Submit' />
                                    </td>


                                    <td>
                                        <font size="3" color="green"><br> <input type="reset" align="left" value='Reset'  />
                                        
                                        <td><center><a href="psdreg.jsp"><br> New User?</a></td>
                                    </td>
                                </tr>
                                
                            </table>

                        </center>
                    </form>
</div>

<div id="Debit" class="tabcontent">
    <br>
 <center><p><font size="6" color="black">PUD Login</font></p></center>

                    <form action="pudact.jsp" method="post" id="pudact" >
                        <br><br>
                        <center>


                            <table>
                                <tr>
                                    <td align="right"><font size="4" color="black"> User Name: </font></td><td> <input type="text" align="left" size="25" name="username" placeholder="Email" required /></td>
                                </tr>
                                <tr></tr> <tr></tr> <tr></tr>



                                <tr>
                                    <td align="right"><font size="4" color="black"><br> Password:</font> </td><td> <br><input type="password" align="left" size="25" name="password" placeholder="Password" required /></td>
                                </tr>
                                <tr></tr> <tr></tr> <tr></tr>

                                
                                <tr>
                                    <td>
                                        <font size="3" color="green"><br> <input type="submit" form="pudact" align="right" value='Submit' />
                                    </td>


                                    <td>
                                        <font size="3" color="green"><br> <input type="reset" align="left" value='Reset'  />
                                        
                                        <td><center><a href="pudreg.jsp"><br> New User?</a></td>
                                    </td>
                                </tr>
                                
                            </table>

                        </center>
                    </form>
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
  
<div class="content-main">
	
</div>			

</div>
</div>
	

</body>
</html>
