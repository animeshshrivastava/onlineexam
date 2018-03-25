<<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Date"%>
<%@page import="org.omg.PortableServer.Servant"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<style type="text/css">
<!--
.style1 {
	font-size: xx-large;
	font-weight: bold;
	color: #FF0000;
}

.style2 {
	color: #FFFFFF;
	font-weight: bold;
}

.style3 {
	font-size: medium
}

.style4 {
	font-size: x-small
}
-->
</style>
</head>
<body>
<table width="100%">
	<tr>
		
		<div align="right">
		<%
			String uname = null;

			if (session.getAttribute("uname") != null) {
				uname = (String) session.getAttribute("uname");
			}
		%> <font face="verdana" size="0.5px" color="blue">&nbsp;&nbsp;

		<%
			if (uname != null) {
		%> <b> Welcome,</b>&nbsp;&nbsp;</font> <font size="0.5px" face="verdana"
			color="#FF0000"><strong><%=uname%></strong> </font> <%
 	}
 %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>



		</td>
	</tr>
</table>


	
<hr />



		<table width="100%">
			<tr align="center">
				<td>
				<form action="./result.jsp" method="post" id="home_form"
					

			<tr>
					
				<td><%!Connection con = null;%> <%
 	try {
 		int f = 0;
 		

 		//ServletContext sc = getServletContext();
 		//String url = sc.getInitParameter("url");
 		//String driver = sc.getInitParameter("driver");
 		//String password = sc.getInitParameter("password");
 		//String username = sc.getInitParameter("username");

 		//Class.forName(driver);
 		//con = DriverManager.getConnection(url, username, password);
                Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?zeroDateTimeBehavior=convertToNull", "root", "123");
 		System.out.println("Connection established");
 		boolean count = false;
                		{
 			PreparedStatement ps = con
 					.prepareStatement("SELECT * FROM result where username='"+uname+"'");

 			ResultSet rs = ps.executeQuery();

 			
 			%>
 		<table border="2" align="center">
                    <tr><b>
                        <td>Q.Id</td>
                        <td>Answer Status</td>
                        <td>College Name</td>
                        
                            </b></tr>
 			
 		<%	
 			while (rs.next()) {

 				{
 			//		count = true;
 %>
				<tr>
				<td><%=rs.getInt("id")%></td>
                              	<td><%=rs.getString("result")%></td>
				<td><%=rs.getString("clgname")%></td>
                                </tr>
                                
				<%
					}
							}
 		
 		%> </table><%
 		
							if (count != true) {
								//out.println("Results not found");
							}

						}
 	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (con != null) {
			con.close();
			System.out.println("Connection closed");
		}
	}
				%>
				
				
				</td>
			</tr>
		</table>
		</td>





		<td width="20%">

		
		<%!Connection con1 = null;%> <%
 	try {
 		

// 		ServletContext sc1 = getServletContext();
 //		String url = sc1.getInitParameter("url");
 //		String driver = sc1.getInitParameter("driver");
 //		String password = sc1.getInitParameter("password");
 //		String username = sc1.getInitParameter("username");

 //		Class.forName(driver);
 //		con1 = DriverManager.getConnection(url, username, password);
           /* Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onto", "root", "123");

 		System.out.println("Connection established");
		
			Statement st1 = null;
				String textarea = request.getParameter("textarea");
				System.out.println(textarea);
				
				st1 = con.createStatement();

				int c = 0;
				ResultSet rs1 = st1.executeQuery("select * from site_updates");
				while (rs1.next()) {

					c++;
				}
				c = c + 1;
                                
				PreparedStatement ps1 = con
						.prepareStatement("INSERT INTO site_updates VALUES(?,?)");
				ps1.setInt(1, c);
				ps1.setString(2, textarea);
				int insert = ps1.executeUpdate();
				out.println(""); */
				//out.println("Site Updated");
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (con1 != null) {
					con1.close();
					System.out.println("Connection closed");
				}
			}
		%>
		</td>




	</tr>
</table>
<hr />
</body>
</html>