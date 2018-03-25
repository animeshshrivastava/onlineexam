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
					<li class="current_page_item"><a href="index.php">Home</a></li>
					<li><a href="reg2.jsp">Candidate Registration</a></li>
					<li><a href="login2.jsp">Candidate Login</a></li>
					<li><a href="about.jsp">About Us</a></li>
					<li><a href="contact.jsp">Contact Us</a></li>
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




function checkFName()
{

var fname=document.f1.fname.value;
var l=fname.length;

if(l<=0)
{
t1.innerHTML="Not empty";
document.f1.fname.focus();
}
var c=0;
var aChar;
for(var i = 0; i != l; i++) {
 aChar = fname.substring(i,i+1) 
if(aChar.search(/[A-Za-z]/)==-1)
{
c=2;
break;
}
else{

c=3;

}}
if(c==2)
{
t1.innerHTML="Not valid";
document.f1.fname.focus();

}
if(c==3)
{
t1.innerHTML="<img src=\"./Images/correct.JPG \">"
}

}



function checkLName()
{

var lname=document.f1.lname.value;
var l1=lname.length;
if(l1<=0)
{
t2.innerHTML="Not empty";
document.f1.lname.focus();
}
var c1=0;
var aChar1;
for(var i = 0; i != l1; i++) {
 aChar1 = lname.substring(i,i+1) 
if(aChar1.search(/[A-Za-z]/)==-1)
{
c1=2;
}
else
{
c1=3;
}
}
if(c1==2)
{
t2.innerHTML="Not valid";
document.f1.lname.focus();

}
if(c1==3)
{
t2.innerHTML="<img src=\"./Images/correct.JPG \">"
}

}

function checkEId()
{

var eid=document.f1.emid.value;
if(eid.search(/[a-zA-Z]\w+\@[a-zA-Z]\w+/)!=0)
{
t3.innerHTML="Not Valid";
document.f1.emid.focus();

}
}
function checkId()
{
var id=document.f1.uid.value;
if(id.search(/[a-zA-Z]\w+/)!=0)
{
t4.innerHTML="Not Empty";
document.f1.uid.focus();
}
var l3=id.length;
var c3=0;
var aChar3;
for(var i = 0; i != l3; i++) {
 aChar3 =id.substring(i,i+1) 
if(aChar3.search(/[A-Za-z]/)==-1)
{
c3=2;
}
else
{
c3=3;
}
}
if(c3==2)
{
t4.innerHTML="Not valid";
document.f1.uid.focus();

}
if(c3==3)
{
t4.innerHTML="<img src=\"./Images/correct.JPG \">"
}
}
function checkPwd()
{
 var pwd1=document.f1.pwd.value;
 if(pwd1.length<6){
 t5.innerHTML="Not valid";
 document.f1.pwd.focus();

 }
 else
{
t5.innerHTML="<img src=\"./Images/correct.JPG \">"
}
} 
function chechRpwd()
{
var pwd1=document.f1.pwd.value;
var pwd2=document.f1.rpwd.value;
if(pwd1!=pwd2)
{
t6.innerHTML="Not same";
document.f1.rpwd.focus();

}
else
{
t6.innerHTML="<img src=\"./Images/correct.JPG \">"
}
}

function checkNo()
{
var phno=document.f1.pno.value;
if(phno.length!=10 )
{
t8.innerHTML="Invalid Phone no";
document.f1.pno.focus();

}

var c5=0;
var aChar5=phno;
for(var i = 0; i != 10; i++) {
 aChar5 =phno.substring(i,i+1) 
if(aChar5.search(/[0-9]+/)==-1)
{
c5=2;
}
else
{
c5=3;
}
}
if(c5==2)
{
t8.innerHTML="Invalid Phone no";
document.f1.pno.focus();
}
if(c5==3)
{
t8.innerHTML="<img src=\"./Images/correct.JPG \">"
}
}

function checkButton()
{
//checkFName();
//checkLName();
//checkEId();
//checkId();
checkPwd();
chechRpwd();
//checkNo();
}
</script>


</head>








<body>

<hr />



<form action="./reg2.jsp" name="f1" id="f1">

<table align="center">
	<tr>
		<td>User Name:</td>
		<td><input type="text" class="style5" name="fname" id="fname"
			 /></td>
		<td><label  id="t1" class="style6"></label></td>
	</tr>
	
	<tr>
	
	
	<tr>
		<td>Password :</td>
		<td><input type="password" name="pwd" id="pwd"  class="style5" /></td>
		<td><label id="t5"></label></td>
	</tr>
	<tr>
		<td>Re-Type Password</td>
		<td><input type="password" id="rpwd" onblur="chechRpwd()" class="style5" /></td>
		<td><label id="t6"></label></td>
	</tr>
	
	<tr>
		<td>Phone No</td>
		<td><input type="text" class="style5" id="pno" name="pno"/></td>
		<td><label id="t8"></label></td>
	</tr>
	
	<tr>
		<td></td>
		<td><input type="Submit" value="Register" class="style5" onclick="checkButton()"/></td>
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
	String fname=request.getParameter("fname");
	//String lname=request.getParameter("lname");
	//String emid=request.getParameter("emid");
	//String uid=request.getParameter("uid");
	String pwd=request.getParameter("pwd");
	//String dob=request.getParameter("dob");
	String pno=request.getParameter("pno");
	//String address=request.getParameter("address");
	
	if(fname!=null && pwd!=null)
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
	


		
	PreparedStatement insert_row=con.prepareStatement("INSERT INTO USER VALUES(?,?,?)");
	
	
	insert_row.setString(2,pwd);
	insert_row.setString(1,fname);
	
	//insert_row.setString(6,dob);
	insert_row.setString(3,pno);
	//insert_row.setString(7,address);
	int insert=insert_row.executeUpdate();
	out.println("");
	out.println("<center> <h3><font color=\"green\"><b>Successfully Registration<b><a href=\"./index.jsp\" > click here to login</a></font></h3></center>");

	System.out.println("number of rows inserted"+insert);
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
	<p>&copy;  <a href="#">This </a>. Design by </p>
</div>
<!-- end #footer -->
</body>
</html>
