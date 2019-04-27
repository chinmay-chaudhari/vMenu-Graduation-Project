<%-- 
    Document   : Payment
    Created on : Jan 8, 2017, 6:42:57 PM
    Author     : Chinmay
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String name=(String)session.getAttribute("customer_name");
            String mode=request.getParameter("mode");
            String c_id=(String)session.getAttribute("customer_id");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            st.executeUpdate("update bill set status='paid' where c_id="+c_id);
            if(mode.equals("cash")){
        %>
        <script>
            var customer="<%= name %>";
            alert(customer+" Your Payment Done By Cash!");
            window.location.assign("Feedback.jsp");
        </script>
        <%
            }
            else if(mode.equals("card")){
        %>
        <script>
            var customer="<%= name %>";
            alert(customer+" Your Payment Done By Card!");
            window.location.assign("Feedback.jsp");
        </script>
        <%
            }
        %>
    </body>
</html>
