<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int account_no=Integer.parseInt(request.getParameter("ano"));
String name=request.getParameter("name");
String password=request.getParameter("pwd");
String confirm_password=request.getParameter("cpwd");
double amount=Double.parseDouble(request.getParameter("amt"));
String address=request.getParameter("add");
long mobile_no=Long.parseLong(request.getParameter("mno"));
String status="active";
if(password.equals(confirm_password))
{
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amazondb","pdb");
	PreparedStatement ps=con.prepareStatement("insert into bank values(?,?,?,?,?,?,?)");
	ps.setInt(1, account_no);
	ps.setString(2, name);
	ps.setString(3, password);
	ps.setDouble(4, amount);
	ps.setString(5, address);
	ps.setLong(6, mobile_no);
	ps.setString(7,status);
	int i=ps.executeUpdate();
	out.print(i+"Account Created Sucessfully");
	con.close();
}catch(Exception e){
	out.print(e);
}
}
else
{
	out.println("Password does not match witth confirm password");}
%>
</body>
</html>