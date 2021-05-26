<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "package";
String userId = "root";
String password = "436425";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Package Details</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="0" border="1">
<tr>
</tr>
<tr bgcolor="##4CAF50">
<td><b>P.Id</b></td>
<td><b>P.Name</b></td>
<td><b>Destination</b></td>
<td><b>Travel Mode</b></td>
<td><b>TourGuide's Name</b></td>
<td><b>MealPlan</b></td>
<td><b>Price</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM packagedetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#01DFA5">

<td><%=resultSet.getString("PackId") %></td>
<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getString("Destination") %></td>
<td><%=resultSet.getString("Travelmode") %></td>
<td><%=resultSet.getString("TourGuide") %></td>
<td><%=resultSet.getString("Mealplan") %></td>
<td><%=resultSet.getString("Price") %></td>
</tr>
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<style>
h2{
  color: white;
  text-align: left;
	font-family: verdana;
}

table{
font-family: verdana;
color: white;
}
body{
background-image: url("srilankatrain55.jpg");
}



</style>