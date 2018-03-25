<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!Connection con=null; %>
<%
try
{
	int f=0;
	String uname=request.getParameter("name");
	String pswd=request.getParameter("pwd");
	System.out.println(uname);
        System.out.println(pswd);
        ServletContext sc=getServletContext();
	//String url=sc.getInitParameter("url");
	//String driver=sc.getInitParameter("driver");
	//String password=sc.getInitParameter("password");
	//String username=sc.getInitParameter("username");
	String a_id="admin";
	String a_pwd="admin";
	String o_id=sc.getInitParameter("ontologyManager");
	String o_pwd=sc.getInitParameter("ontologyManagerPwd");
	//Class.forName(driver);
	//con=DriverManager.getConnection(url,username,password);
	Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "123");

        System.out.println("Connection established");
	PreparedStatement ps=con.prepareStatement("SELECT * FROM user");
	ResultSet rs=ps.executeQuery();
	if(uname.equals(a_id)&&pswd.equals(a_pwd))
	{
		session.setAttribute("a_id",a_id);
		response.sendRedirect("./adminhome.jsp");
	}
	
	else
	{
	while(rs.next())
	{
		if(uname.equals(rs.getString("uname"))&&pswd.equals(rs.getString("upwd")))
		{
			f=1;
			session.setAttribute("uname",uname);
		}
	}
	}
	if(f==1)
		response.sendRedirect("./userhome.jsp");
	else
		response.sendRedirect("./index.jsp?status=Invalid ID or Password");
}catch(Exception e)
{
	e.printStackTrace();
	}finally{
		if(con!=null)
		{
			con.close();
			System.out.println("Connection closed");
		}
	}
%>


</body>
</html>