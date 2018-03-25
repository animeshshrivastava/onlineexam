<%@page language="java" import="java.sql.*" %>

<%
if(request.getParameter("submit")!=null)
{
 Connection con = null;
    String url = "jdbc:mysql://192.168.10.211:3306/";
    String db = "amar";
    String driver = "com.mysql.jdbc.Driver";
    String userName ="amar";
    String pass="amar123";

try{
	   Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?zeroDateTimeBehavior=convertToNull", "root", "123");
        Statement st = con.createStatement();
        String qq="select * from question_detail";
        ResultSet rs1=st.executeQuery(qq);
       
        
        rs1.last();
        int x=rs1.getInt(1);
        //rs.last();
       // int x=rs.getInt(1);
       // out.println("value="+rs.getInt(1));
      //  out.println("<h1> ok </h1>");
       // if(x=0)
                x=x+1;       
          //int  x=3;
       // }
       // rs.close();
	String quest = request.getParameter("quest").toString();
	String QA = request.getParameter("QA").toString();
	String QB = request.getParameter("QB").toString();
	String QC = request.getParameter("QC").toString();
	String QD = request.getParameter("QD").toString();
	String correctAns = request.getParameter("correctAns").toString();
           out.println("quest : " + quest);
     //  String qry = "insert into question_deatil(quest,QA,QB,QC,QD,correctAns) values('"+quest+"','"+QA+"','"+QB+"','"+QC+"','"+QD+"','"+correctAns+"')";
            PreparedStatement insert_row=con.prepareStatement("INSERT INTO question_detail VALUES(?,?,?,?,?,?,?)");
	
	insert_row.setInt(1,x);
	insert_row.setString(2,quest);
	insert_row.setString(3,QA);
	
	//insert_row.setString(6,dob);
	insert_row.setString(4,QB);
        insert_row.setString(5,QC);
        insert_row.setString(6,QD);
        insert_row.setString(7,correctAns);
	//insert_row.setString(7,address);
	int val=insert_row.executeUpdate();
	out.println("");
	out.println("<center> <h3><font color=\"green\"><b>Successfully Submitted<b><a href=\"./questForm.jsp\" > More...</a></font></h3></center>");

	
     //    out.println("qry : " + qry);
	//int val=1;
	//st.executeUpdate(qry);
        out.println("st:"+val);
	con.close();
       if(val>0)
        {
         // response.sendRedirect("quizeApplication.jsp");
        }
	
}

catch(SQLException ex){
	System.out.println("SQL satatment not found");
}



}

%>

<html>
<title>Quiz application in jsp</title>
<head>

<script>

function validateForm(theForm){

	if(theForm.quest.value==""){
			//Please enter username
			alert("Please enter Question.");
			theForm.quest.focus();
			return false;
	}
	
      return true;
     } 
 </script>
</head>

<body>
<br>
<br/>
<center>

<table border="1" width="450px" bgcolor="pink" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">
      <form method="POST" action="" onsubmit="return validateForm(this);">
     
        <h2 align="center"><font color="red">Questions Addition</font></h2>
        <table border="0" width="400px" cellspacing="2" cellpadding="4">
            <tr>
                 Select Branch Name: <select name="clg">
                   <option value="ME">ME</option>
                   <option value="CSE">CSE</option>
                   <option value="EC">EC</option>
                   <option value="IT">IT</option>
                    </select><br>
            </tr>
          <tr>
            <td width="50%"><b>Enter Question:</b></td>
            <td width="50%"><input type="text" name="quest" size="40"/> </td>
          </tr>
	<tr>
            <td width="50%"><b>Enter Answer(A.):</b></td>
            <td width="50%"><input type="text" name="QA" size="40"/> </td>
          </tr>
	 <tr>
            <td width="50%"><b>Enter Answer(B.):</b></td>
            <td width="50%"><input type="text" name="QB" size="40"/> </td>
          </tr>

          <tr>
            <td width="50%"><b>Enter Answer(C.):</b></td>
            <td width="50%"><input type="text" name="QC" size="40"/> </td>
          </tr>

	<tr>
            <td width="50%"><b>Enter Answer(D.):</b></td>
            <td width="50%"><input type="text" name="QD" size="40"/> </td>
          </tr>
	 
	<tr>
            <td width="50%"><b>Correct Answer:</b></td>
            <td width="50%"><input type="text" name="correctAns" size="10"/> </td>
          </tr>	

        </table>
	<center>
        <p><input type="submit" value="Submit" name="submit">
          <input type="reset" value="Reset" name="reset"></p>
        </center>  
      </form>
    </td>
  </tr>
</table>
</center>
</body>

</html>
