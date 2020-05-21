<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>

<%

                        try {

                            String username = request.getParameter("username");
                            String password = request.getParameter("password");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("csp") ) && (password.equals("csp"))) {

                                response.sendRedirect("csphome.jsp");

                            } else {
            response.sendRedirect("csp.jsp?m1=LoginFail");
                }
                            
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
