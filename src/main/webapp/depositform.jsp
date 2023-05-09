<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="DepositCode.jsp" method="post" style="bg_color:blue">
<table>
<fieldset>
<h1 style="color: red;" >SDFC BANK</h1>
    <h2>EXTRAORDINARY SERVICES</h2>
    </fieldset>
    <fieldset>
    <a href="home1.jsp">Home </a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="newaccount.jsp">New Account</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="balanceform.jsp">Balance</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="depositform.jsp">Deposit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="withdrawform.jsp">WithDraw</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="transferform.jsp">Transfer</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="closeaccount.jsp">Close A/C</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="aboutus.jsp">About Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</fieldset>
<h1 style="color: red;">DEPOSIT FORM</h1>
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