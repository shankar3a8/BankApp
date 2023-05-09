<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Closing Form</title>
</head>
<body>
<% 
int account_no=Integer.parseInt(request.getParameter("ano"));
String name=request.getParameter("name");
String password=request.getParameter("pwd");
String status="deactivate";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amazondb","pdb");
	PreparedStatement ps=con.prepareStatement("update bank set account_status=? where account_no=? and name=? and password=?");
	ps.setString(1, status);
	ps.setInt(2,account_no);
	ps.setString(3, name);
	ps.setString(4,password);
	int i=ps.executeUpdate();
	if(i==1){
		out.print("Account closed Sucessfully");
	}else{
		out.print("Check the Account Details");
	}
}catch(Exception e){
	out.print(e);
}
%>
</body>
</html>