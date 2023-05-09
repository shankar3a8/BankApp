<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table,h1,a{
color:white;
}
</style>
</head>
<body>
<center>
<form action="TransferCode.jsp" method="post" style="background:linear-gradient(#04617F,#000000)">
<fieldset>
<h1 style="color: red;" >SDFC BANK</h1>
    <h2 style="color: white;">EXTRAORDINARY SERVICES</h2>
</fieldset>
<fieldset>
    <a href="home1.jsp">Home </a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="newaccount.jsp">New Account</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="balanceform.jsp">Balance</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="depositform.jsp">Deposit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="withdrawform.jsp">WithDraw</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="transferform.jsp">Transfer</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="closeaccount.jsp">Close A/C</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="aboutus.jsp">Close A/C</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</fieldset>

<table>
<h1>TRANSFER FORM</h1>
<tr>
<td>Account Number:</td>
<td><input type="number" name="ano"></td>
<tr>
<td>Name:</td>
<td><input type="text" name="name"></td>
<tr>
<td>Password:</td>
<td><input type="password" name="pwd"></td>
</tr>
<tr>
<td>Target Account no:</td>
<td><input type="number" name="tano"></td>
</tr>
<tr>
<td>Amount:</td>
<td><input type="number" name="amt"></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
<td><input type="reset" value="clear"></td>
</tr>
</table>
</form>
</center>
</body>
</html>