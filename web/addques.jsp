<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--


-->
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
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">Online Exam</a></h1>
			</div>
			<div id="menu">
				<ul>
					<li class="current_page_item"><a href="adminhome.jsp">Home</a></li>
					  <li><a href="allrec2.jsp">User Details</a></li>
                                           <li><a href="allques.jsp">Question Details</a></li>
                                         <li><a href="addques.jsp">Add Questions</a></li>
                                         <li><a href="index.jsp">Logout</a></li>
					
				</ul>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="page">
		<div id="content">
			<div class="post">
				<h2 class="title"><a href="#">Welcome to Online Exam </a></h2>
				<div class="entry">
					<p><a href="#"><img src="images/img6.jpg" width="600" height="170" alt="" /></a></p>
					<p>This is <strong>Online Exam</strong>, a free, fully standards-compliant CSS template designed by <a href="http://Google.com" rel="nofollow"></a>.  </p>
					<p class="links"><a href="#" class="more">Read More</a><a href="#" title="b0x" class="comments">Comments</a></p>
				</div>
			</div>
		</div>
		<!-- end #content -->
		<script type="text/javascript">
</script>


</head>

<body>

<hr />



<form action="./addques.jsp" name="f1" id="f1">

<table align="center">
	<tr>
		<td>Question:</td>
		<td><input type="text" class="style5" name="ques" id="ques"
			 /></td>
		<td><label  id="t11" class="style6"></label></td>
	</tr>
	<tr>
		<td>Answer 1:</td>
		<td><input type="text" class="style5" name="a1" id="a1"
			 /></td>
		<td><label id="t2"></label></td>
	</tr>
	<tr>
		<td>Answer 2:</td>
		<td><input type="text" class="style5" name="a2" id="a2"
			 /></td>
		<td><label id="t2"></label></td>
	</tr>
    <tr>
		<td>Answer 3:</td>
		<td><input type="text" class="style5" name="a3" id="a3"
			 /></td>
		<td><label id="t3"></label></td>
	</tr>
    <tr>
		<td>Answer 4:</td>
		<td><input type="text" class="style5" name="a4" id="a4"
			 /></td>
		<td><label id="t4"></label></td>
	</tr>
    <tr>
		<td>Right Answer:</td>
		<td><input type="text" class="style5" name="ra1" id="ra1"
			 /></td>
		<td><label id="t5"></label></td>
	</tr>
      
    
	<tr>
		<td></td>
		<td><input type="Submit" value="Submit" class="style5"/></td>
		<td><label></label></td>
	</tr>

</table>

</form>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%!Connection con=null; %>
<%
try
{
	response.setContentType("text/html");
	String ques=request.getParameter("ques");
	String a1=request.getParameter("a1");
        String a2=request.getParameter("a2");
        String a3=request.getParameter("a3");
        String a4=request.getParameter("a4");
        String ra1=request.getParameter("ra1");
	
	
	
	if(ques!=null && a1!=null && a2!=null && a3!=null && a4 != null && ra1 != null)
	{
	Statement st = null;
	//ServletContext sc=getServletContext();
	//String url=sc.getInitParameter("url");
	//String driver=sc.getInitParameter("driver");
	//String password=sc.getInitParameter("password");
	//String username=sc.getInitParameter("username");
	
	//Class.forName(driver);
	//con=DriverManager.getConnection(url,username,password);
        Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "123");
	System.out.println("Connection established");
	


		
	PreparedStatement insert_row=con.prepareStatement("INSERT INTO question_detail VALUES(?,?,?,?,?,?)");
	
	insert_row.setString(1,ques);
	//insert_row.setString(2,pwd);
	insert_row.setString(2,a1);
	insert_row.setString(3,a2);
	insert_row.setString(4,a3);
	insert_row.setString(5,a4);
	insert_row.setString(6,ra1);
	
	int insert=insert_row.executeUpdate();
	out.println("");
	out.println("<center> <h3><font color=\"green\"><b>Question Successfully Created...<b><a href=\"./addques.jsp\" >More </a></font></h3></center>");

	//System.out.println("number of rows inserted"+insert);
	System.out.println("done...");
        }
        
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


<hr />





	<div id="featured-content">
		<div id="column1">
			<h2>Online Examination</h2>
			<p><img src="images/img1.jpg" width="300" height="150" alt="" /></p>
			<p>This is for online Exam.</p>
			<p class="button"><a href="#">Read More</a></p>
		</div>
		<div id="column2">
			<h2>Easy to Give</h2>
			<p><img src="images/img2.jpg" width="300" height="150" alt="" /></p>
			<p>This is best of Online Solution</p>
			<p class="button"><a href="#">Read More</a></p>
		</div>
		<div id="column3">
			<h2>24x7 Available</h2>
			<p><img src="images/img3.jpg" width="300" height="150" alt="" /></p>
			<p>Your skill should be more Effective. </p>
			<p class="button"><a href="#">Read More</a></p>
		</div>
	</div>
</div>
<div id="footer">
	<p>&copy;  <a href="#">This </a>. Designed by</p>
</div>
<!-- end #footer -->
</body>
</html>
