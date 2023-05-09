<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script >
function check()
{
	var v1=f.ano.value;
	var v2=f.name.value;
	var v3=f.pwd.value;
	var v4=f.cpwd.value;
	var v5=f.amt.value;
	var v6=f.add.value;
	var v7=f.mno.value;
	if(v1=="")
		{
			alert("please insert account number");
			return false;
		}
	if(v2=="")
	{
		alert("please insert account Holder Name");
		return false;
	}if(v3=="")
	{
		alert("please insert password");
		return false;
	}
	if(v4!=v3)
	{
		alert("password and confirm pasword does not match");
		return false;
	}
	if(v5=="" ||v5<=0)
	{
		alert("please insert amount");
		return false;
	}
	if(v6=="")
	{
		alert("please insert address");
		return false;
	}
	if(v7=="")
	{
		alert("please insert mobile number");
		return false;
	}
}
</script>
<style >
/*body{
background:linear-gradient(#04617F,#000000)
}*/
form{
color:white;
}
a{
color:white;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<form name="f" action="NewAccountCode.jsp" method="post" onsubmit="return check()" style="background:linear-gradient(#04617F,#000000)" >
<table>
<div style="color:red;">
<h1 style="color: red;" >SDFC BANK</h1>
    <h2>EXTRAORDINARY SERVICES</h2>
</div>    
    <fieldset >
    <a href="home1.jsp">Home </a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="newaccount.jsp">New Account</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="balanceform.jsp">Balance</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="depositform.jsp">Deposit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="withdrawform.jsp">WithDraw</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="transferform.jsp">Transfer</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="closeaccount.jsp">Close A/C</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="aboutus.jsp">Close A/C</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</fieldset>
<div>	
<h3 style="color:red">OPEN ACCOUNT FORM</h3>
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
<td>Confirm Password:</td>
<td><input type="password" name="cpwd"></td>
</tr>
<tr>
<td>Amount:</td>
<td><input type="number" name="amt"></td>
</tr>
<tr>
<td>Address:</td>
<td><input type="text" name="add"></td>
</tr>
<tr>
<td>Mobile Number:</td>
<td><input type="number" name="mno"></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
<td><input type="reset" value="clear"></td>
</tr>
</div>
</table>
</form>
</center>
</body>
</html>