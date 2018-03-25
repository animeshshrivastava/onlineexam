<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<% 
String ans=" ";
String check="no";
int seq1=1;
int seq2=0;
String res="";
//if(request.getParameter("submit")!=null)
   //    {
    
      //  }
if(request.getParameter("correctAns")!=null)
{
    ans=request.getParameter("correctAns").toString();
      seq1=Integer.parseInt(request.getParameter("seq"));
      seq2=seq1+1;
      //out.println(seq1);
}
if(seq2==0)
    seq2=1;

    

   
//if(request.getParameter("submit")==null)
//{
  //  seq=seq+1;
//}
//else
    


String id=request.getParameter("id");
System.out.println("id:"+id);

int i=1;

String s,g;

int count=0;
Connection con=null;
Statement st=null;
ResultSet rs=null;
try {

   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?zeroDateTimeBehavior=convertToNull", "root", "123");

 st = con.createStatement();
//for(i=1;i<=2;i++)
// {
 rs = st.executeQuery("select * from question_detail where id="+seq2+"");
out.print("Question No:"+seq2);
while(rs.next()) {
    check="yes";
%>

<br>
<br/>
<center>

<table border="1" width="500px" bgcolor="pink" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">

<form name="form1">

 <h2 align="center"><font color="red">Online Exam Application</font></h2>
 Select Branch Name: <select name="clg">
<option value="ME">ME</option>
<option value="CSE">CSE</option>
<option value="EC">EC</option>
<option value="IT">IT</option>
</select><br>

<b>Select Correct Answer</b>
        <table border="0" width="500px" cellspacing="2" cellpadding="4">
 <tr>

<td width="50%"> Question:</td>
<input type="hidden" name="correctAns" value="<%=rs.getString(7)%>" />
<input type="hidden" name="seq" value="<%=rs.getString(1)%>" />
<tr>
<td><%= rs.getString("quest") %></td></tr>
<tr>
<td>

1: <input type="radio" name="a" value= "QA" /></td>
    <td><%= rs.getString("QA") %></td></tr> 
<tr>
<td>
2: <input type="radio" name="a" value="QB" /></td>
<td><%= rs.getString("QB") %></td></tr>

<tr>
<td>
3: <input type="radio" name="a" value="QC" /></td>
<td><%= rs.getString("QC") %> </td></tr>

<tr>
<td>
4: <input type="radio" name="a" value="QD" /> </td>
<td> <%= rs.getString("QD") %> </td></tr>

<tr>
<td>
<center>
   <input type="submit" value="Submit" name="submit"></center></td>
   <td> <a href ="userhome.jsp">Stop Exam</a> </td></tr>

</table>

</form>
 </td>
  </tr>
</table>
</center>

<body>
<script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "180";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "Time over";
///disable submit-button etc
}
}
//-->
</script>
<body>
<form action="<%=request.getRequestURL()%>" name="forma">
Seconds remaining: <input type="text" name="clock" value="<%=clock%>" style="border:0px solid white">
...
</form>
<script>
<!--
timer();
//-->
</script>
</body>
<% g=request.getParameter("a");
%>
<% 
if(g.equals(ans)){

count++;
res="Correct";
out.println("Answer:Correct");
}
else
       {
res="Incorrect";
    out.println("Answer:Incorrect");
}
// for saving record
try
               {
                Class.forName("com.mysql.jdbc.Driver");
               Connection  con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?zeroDateTimeBehavior=convertToNull", "root", "123");
                PreparedStatement insert_row=con1.prepareStatement("INSERT INTO result VALUES(?,?,?,?)");
                 String user=(String)session.getAttribute("uname");
                 insert_row.setInt(1,seq1);
                insert_row.setString(2,user);
                insert_row.setString(3,res);
                
	String clg1=request.getParameter("clg");
        insert_row.setString(4,clg1);
                int val=insert_row.executeUpdate();
                
    
                }catch(Exception ex)
                                               {
                    out.println(ex.getMessage());
                    
                    
                }
%>



<%
}}
// }
catch (Exception ex) {
ex.printStackTrace();

%>

<%
} finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (con != null) con.close();
//if (con1 != null) con1.close();
}
if(check.equals("no"))
       {
    out.println("Score="+count);
       }


%>


</html>
