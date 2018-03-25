<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--


-->
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

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Exam</title>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    <table width="100%">
	<tr>
		
		<div align="right">
		<%
			String uname = null;

			if (session.getAttribute("a_id") != null) {
				uname = (String) session.getAttribute("a_id");
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
		
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">Online Exam</a></h1>
			</div>
			<div id="menu">
				<ul>
					<li class="current_page_item"><a href="userhome.jsp">Home</a></li>
					 <li><a href="startexam.jsp">Start Exam</a></li>
                                        <!-- <li><a href="allcompinfo.jsp">Company Information</a></li>
                                         <li><a href="upload.jsp">Upload Resume</a></li> -->
					<li><a href="index.jsp">Logout</a></li>
					
				</ul>
			</div>
		</div>
	</div>
	<!-- end #header -->
        
	<div id="page">
		<div id="content">
			<table width="100%">
			<tr align="center">
				<td>
				<form action="./ExamServer.jsp" method="post" id="home_form"
					

			<tr>
					
				<td><%!Connection con = null;%> <%
 	try {
 		int f = 0;
 		

 		Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "123");

 		System.out.println("Connection established");
 		boolean count = false;
                		{
 			PreparedStatement ps = con
 					.prepareStatement("SELECT * FROM ques");

 			ResultSet rs = ps.executeQuery();

 			
 			%>
 		<table border="2" align="center">
                    <tr><b>
                       
                            </b></tr>
 			
 		<%	
 			while (rs.next()) {

 				{
                                    
 			//		count = true;
 %>
				
                                Question: <%=rs.getString("ques")%><br/>
                               <input type="radio" name="<%=rs.getString("ans1")%>" value="<%=rs.getString("ans1")%>"><%=rs.getString("ans1")%></br>
                                <input type="radio" name="<%=rs.getString("ans1")%>" value="<%=rs.getString("ans2")%>"><%=rs.getString("ans2")%></br>
                                <input type="radio" name="<%=rs.getString("ans1")%>" value="<%=rs.getString("ans3")%>"><%=rs.getString("ans3")%></br>
                                <input type="radio" name="<%=rs.getString("ans1")%>" value="<%=rs.getString("ans4")%>"><%=rs.getString("ans4")%></br>
                                                               
                                <br/><br/>
                           
                                
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
                                 <input type="submit" value="Check Your Result"/>
                            </form>
				
		</div>
		<!-- end #content -->
                
		
<!-- end #footer -->
</body>
</html>
