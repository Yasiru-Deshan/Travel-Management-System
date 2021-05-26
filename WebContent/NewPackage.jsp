<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="New.css">
</head>
<body style ="background-image: url(srilankatrain55.jpg);">


<h1>Create New Package</h1>

<center>
<table id="pk">
<form action="PackageInsert" method="post">
<tr><th>Package Name : </th>
    <td><input type="text" name="Name" value=""></td>
</tr>    
<tr><th>Destination : </th>
    <td><input type="text" name="Place" value=""></td>
</tr>  
<tr><th>Travelling Mode : </th>
    <td><input type="text" name="Mode" value=""></td>
</tr>  
<tr><th>Tour Guide's name: </th>
    <td><input type="text" name="TName" value=""></td>
</tr>  
<tr><th>Meal Plan : </th>
    <td><input type="text" name="Meal" value=""></td>
</tr>  
<tr><th>Price Per Adult : </th>
    <td><input type="text" name="Price" value=""></td>
</tr>  
<br><br>
<tr><td></td>
  <td><input id="sub" type="Submit" name="" value="Create Package"></td>
  </tr></form></table>
</center>
<a href="packages.jsp"><input id="sub" type="button" name="" value="Back"></a>

</body>
</html>