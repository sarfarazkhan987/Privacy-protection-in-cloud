<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>

<%

                        try {

                            String username = request.getParameter("username");
                            String password = request.getParameter("password");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("authority") ) && (password.equals("authority"))) {

                                response.sendRedirect("authorityhome.jsp");

                            } else {
            response.sendRedirect("authority.jsp?m1=LoginFail");
                }
                            
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
