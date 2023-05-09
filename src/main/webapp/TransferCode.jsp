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
int acc=Integer.parseInt(request.getParameter("tano"));
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
	
	//if(status.equals("equals"))
	//{
	if(rs.next())
	{
		String status=rs.getString(7);
		//out.print(status);
		if(status.equals("active"))
		{
		//out.println("ok");
		double amount=rs.getDouble(4);
		//out.println(amount);
		if(amount>=withdraw){
			//out.println("ok");
			PreparedStatement qs=con.prepareStatement("select *from bank where account_no=?");
			qs.setInt(1,acc);
			ResultSet r=qs.executeQuery();
			if(r.next()){
				String status1=r.getString(7);
				if(status1.equals("active"))
				{
				double amount1=r.getDouble(4);
				//out.println("ok");
				PreparedStatement p=con.prepareStatement("update bank set amount=amount-? where account_no=? and name=? and password=?");
				p.setDouble(1, withdraw);
				p.setInt(2, account_no);
				p.setString(3, name);
				p.setString(4, password);
				amount=amount-withdraw;
				int i=p.executeUpdate();
				if(i==1){
					out.print("Amount that to be Transfered Into the Account: "+acc+" has been debited your Current Balance is "+amount+"<br>");
					PreparedStatement q=con.prepareStatement("update bank set amount=amount+? where account_no=? <br>");
					q.setDouble(1, withdraw);
					q.setInt(2, acc);
					int n=q.executeUpdate();
					out.println("Credited into the target account  "+n);
					amount1=amount1+withdraw;
					if(n==1){
						out.println("Credited amount into the account with number "+acc);
						out.println("Total balance in the Account: "+acc+" is "+amount1);						
					}
				
			}else{
				out.println("Try afterv some time");
			}
				}else{out.print("Target Accont has been deleted or deactivated" +"<br>");}
				}else{
				out.print("enter valid details");
			}
		}else{
			out.println("Insufficient Funds");
		}
		}else{out.print("your account has been deactivated");}
	}else{
		out.println("invalid details of account 1");
	}
//	}else{
	//	out.print("Your Accoutn has been Deactivated Please visit your bank");
//	}
	
}catch(Exception e){
	out.print(e);
}
	
%>

</body>
</html>
