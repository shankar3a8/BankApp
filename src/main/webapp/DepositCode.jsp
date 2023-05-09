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
double deposit=Double.parseDouble(request.getParameter("amt"));

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amazondb","pdb");
	PreparedStatement ps=con.prepareStatement("select *from bank where account_no=? and name=? and password=?");
	ps.setInt(1,account_no);
	ps.setString(2,name);
	ps.setString(3,password);
//	double balance=0.0;
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		String status=rs.getString(7);
		if(status.equals("active"))
		{
		double amount=rs.getDouble(4);
		amount+=deposit;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amazondb","pdb");
		PreparedStatement p=con.prepareStatement("update bank set amount=? where account_no=? and name=? and password=?");
		p.setDouble(1, amount);
		p.setInt(2,account_no);
		p.setString(3,name);
		p.setString(4,password);
		int i=p.executeUpdate();
		out.print(account_no+"Deposited Sucessfull");
		out.print("Account_No="+rs.getInt(1));
		con.close();
		}else{
			out.print("Sorry your account has been deleted please Visit Bank ");
		}
	}
	else{
		out.print("enter valid details");
	}
}catch(Exception e){
	out.println(e);
}
%>
</body>
</html>