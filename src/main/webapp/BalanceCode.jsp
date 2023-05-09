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
//boolean flag=true;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amazondb","pdb");
	PreparedStatement ps=con.prepareStatement("select *from bank where account_no=? and name=? and password=?");
	ps.setInt(1, account_no);
	ps.setString(2, name);
	ps.setString(3, password);
	String status="";
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
	status=rs.getString("account_status");
	}
	ResultSetMetaData rsmd=rs.getMetaData();
	out.print("<html><body><table border='1'>");
	int n=rsmd.getColumnCount();
	//int k=rs.executeUpdate();
	out.println("<tr>");
	//if(rs.next())
	//{
	if(status.equals("active")){
	for(int i=1;i<=n;i++)
	{
		
		if(i!=3&&i!=7)
		out.println("<td><font color=blue size=3>"+"<br>"+rsmd.getColumnName(i));
	}
	out.println("</tr>");
	while(rs.next())
	{
		
		for(int j=1;j<=n;j++)
		{
			if(j!=3&&j!=7)
			{
				out.println("<td><br>"+rs.getString(j));
		//		out.print(rs.getString(j));
			}
			
		}
		out.println("<tr>");
	
	out.println("</table></body></html>");
	}
	}else{
		out.print("Your account has been deactivated Please Visit your Bank");
	}
	con.close();
		//}//else{
		//out.println("enter valid details");
	//}
}catch(Exception e){
	out.print(e);
}
%>
</body>
</html>