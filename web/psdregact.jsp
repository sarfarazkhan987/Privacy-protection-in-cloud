
<%@page import="java.sql.*"%>
<%@page import="privacy.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
     String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String address = request.getParameter("address");
    String cno = request.getParameter("cno");
    String type = request.getParameter("type");
    String group = request.getParameter("group");
    
    try{
       
       // String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/privacyprotection","root","root");

    PreparedStatement ps = co.prepareStatement("insert into psd values(?,?,?,?,?,?,?,?)");

        ps.setString(1,username);    
        ps.setString(2,password);
        ps.setString(3,email);
        ps.setString(4,dob);
        ps.setString(5,address);
        ps.setString(6,cno);
        ps.setString(7,type);
        ps.setString(8,group);



    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("user.jsp?message=success");
out.println("User Registered Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</body>
</html>