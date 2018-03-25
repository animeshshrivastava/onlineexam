
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Date"%>
 <%@ page import="java.io.*" %>
<%@page import="org.omg.PortableServer.Servant"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

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
				<td><%!Connection con = null;%> <%
 	try {
 		

 		Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onto", "root", "123");
 		System.out.println("Connection established");
 	
 		%>
				
			<center>
			<FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp"
				METHOD=POST><br>
			
			
			<table border="2">
				<tr>
					<td colspan="2">
					<p align="center"><B>UPLOADING THE FILE</B>
					</td>
				</tr>
				<tr>
					<td><b>Choose the file To Upload:</b></td>
					<td><INPUT NAME="F1" TYPE="file"></td>
				</tr>
				<tr>
					<td colspan="2">
					<p align="right"><INPUT TYPE="submit" VALUE="Send File"></p>
					</td>
				</tr>

			</table>
			
			</FORM></center>

				<% 
            
             
            	
            	
            	 	
            	 	String contentType = request.getContentType();
            	 	System.out.println(contentType);
            	 	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
            	  		DataInputStream in = new DataInputStream(request.getInputStream());
            	 		
            	 		int formDataLength = request.getContentLength();
            	 		byte dataBytes[] = new byte[formDataLength];
            	 		int byteRead = 0;
            	 		int totalBytesRead = 0;
            	 		
            	 		while (totalBytesRead < formDataLength) 
            	 		{
            	 			byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
            	 			totalBytesRead += byteRead;
            	 		}
            	 		String file = new String(dataBytes);
            	 		
            	 		String saveFile = file.substring(file.indexOf("filename=\"") + 10);
            	 		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            	 		saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
            	 		int lastIndex = contentType.lastIndexOf("=");
            	 		String boundary = contentType.substring(lastIndex + 1,contentType.length());
            	 		int pos;
            	 		
            	 		pos = file.indexOf("filename=\"");
            	 		pos = file.indexOf("\n", pos) + 1;
            	 		pos = file.indexOf("\n", pos) + 1;
            	 		pos = file.indexOf("\n", pos) + 1;
            	 		int boundaryLocation = file.indexOf(boundary, pos) - 4;
            	 		int startPos = ((file.substring(0, pos)).getBytes()).length;
            	 		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            	 		
            	 		String filepath="D:\\job_portal\\web\\upload\\"+""+saveFile;
            	 		FileOutputStream fileOut = new FileOutputStream(filepath);
            	 		fileOut.write(dataBytes, startPos, (endPos - startPos));
            	 		fileOut.flush();
            	 		fileOut.close();
            	 		
            	 		
            	 		
            	 		Statement st11 = null;
        				
        				st11 = con.createStatement();
        				
        				int c1=0;
        				//ResultSet rs11 = st11.executeQuery("select * from site_updates");
        				//while(rs11.next()){
        					
        				//	c1++;
                                                
        				//}
        				if(c1==1)
                                            c1=0;
                                        c1=c1+1;
        					PreparedStatement ps11 = con.prepareStatement("INSERT INTO user_uploads VALUES(?,?)");
        				ps11.setInt(1,c1);
        				ps11.setString(2,saveFile);
        				int insert=ps11.executeUpdate();
            	 		
            	 		
            	 		
            	 		
            	 		
            	 		
            	 		
            	 		
            	 		
            	 		%>
                                <Br><table border="2"><tr><td>
                                            <br>
                                            <br>
                                                <b>You have successfully
            	  upload the file by the name of:</b>
            	 		<% out.println(saveFile); %></td></tr></table> <%}
            	 	
            	

          


            	 %>
            	  

			</td>
			</tr>

		</table>
		</td>

		<td width="20%">

		
		<table>
			<tr>
				<td>
				<%
					//PreparedStatement ps1 = con
					//			.prepareStatement("SELECT * FROM site_updates");
					//	ResultSet rs1 = ps1.executeQuery();

					//	while (rs1.next()) {
							
					//		out.println(rs1.getString(2)+"<br>");
						 
					//}

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
		</fieldset>
		</td>

	</tr>



</table>


<hr />

</body>
</html>












