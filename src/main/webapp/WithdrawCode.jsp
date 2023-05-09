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
double withdraw=Double.parseDouble(request.getParameter("amt"));

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amazondb","pdb");
	PreparedStatement ps=con.prepareStatement("select *from bank where account_no=? and name=? and password=?");
	ps.setInt(1,account_no);
	ps.setString(2,name);
	ps.setString(3,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		String status=rs.getString(7);
		if(status.equals("active"))
		{
		double tamount=rs.getDouble(4);
		if(withdraw>tamount)
		{
			out.print("Insufficient Funds");
		}
		else{
		tamount=tamount-withdraw;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amazondb","pdb");
		PreparedStatement p=c.prepareStatement("update bank set amount=? where account_no=? and name=? and password=?");
		p.setDouble(1, tamount);
		p.setInt(2,account_no);
		p.setString(3,name);
		p.setString(4,password);
		int i=p.executeUpdate();
		out.print(account_no+"Debited Sucessfully");
		//out.print("Account_No="+));
		con.close();
		}
		}else{
			out.println("Your account has been deactivated so please visit your Bank");
		}}
	else{
		out.print("enter valid details");
	}
}catch(Exception e){
	out.println(e);
}
%>
</body>
</html>