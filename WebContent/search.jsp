<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="p1.Connect" %>
<%@ page import="p1.Student" %>
<%@ page import="java.util.ArrayList" %>
<%
	Connect c1= new Connect();
	ArrayList<Student> arr;
%>
<%
	String s=null;
	s=request.getParameter("roll");
	int roll=0;
	
%>
<%
	if(s!=null)
	{
		roll=Integer.parseInt(s);
	}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 24px;
	color: #FFFFFF;
}
.style4 {
	font-family: "Times New Roman", Times, serif;
	font-size: 32px;
	color: #FFFFFF;
	font-style: italic;
}
.style5 {
	color: #FFFFFF;
	font-weight: bold;
}
.style2 {color: #FFFFFF}
-->
</style>
</head>

<body>
<table width="80%" border="1" align="center" cellpadding="10" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td colspan="2" bordercolor="#000000" bgcolor="#000033"><span class="style1">Student Management System</span> </td>
  </tr>
  <tr>
    <td width="16%" height="415" valign="top" bordercolor="#000000">
	<ul>
	<li><a href="new.jsp">Add New</a></li>
	<li><a href="show.jsp">Show All</a></li>
	<li><a href="search.jsp">Search</a></li>
	<li><a href="index.html">Home</a></li>
	</ul>	</td>
    <td width="84%" valign="top" bordercolor="#000000"><form id="form1" name="form1" method="post" action="search.jsp">
      <table width="93%" height="269" border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#000000">
        <tr>
          <td height="58" colspan="3" bgcolor="#2A00AA"><h2 align="center" class="style4">Search Student Details </h2></td>
        </tr>
        <tr>
          <td width="40%" height="73"><h3><strong>Enter Roll Number </strong></h3></td>
          <td><h3><strong>:</strong></h3></td>
          <td width="56%">
            <div align="left">
              <input name="roll" type="text" id="roll" size="30" />
              </div></td>
        </tr>
        <tr bgcolor="#333333">
          <td height="46" colspan="3" bgcolor="#2A0055"><div align="center">
              <label>
              <input name="Search" type="submit" id="Search" value="Search" />
              </label>
              <label></label>
          </div></td>
          </tr>
          </table>
          
      <%
		if(roll!=0)
		{
			arr=c1.getRecordsByRoll(roll);
			Student s1=(Student)arr.get(0);
	
	%>
        <table width="50%" border="1" cellspacing="0" cellpadding="10">
        	<tr>
        	<td bordercolor="#000000"><div align="center"><strong>Roll</strong></div></td>
        	<td bordercolor="#000000"><div align="center"><strong>Name</strong></div></td>        	
        	<td bordercolor="#000000"><div align="center"><strong>City</strong></div></td>
        	<td bordercolor="#000000"><div align="center"><strong>Marks</strong></div></td>
        	</tr>
        	<tr>
        	<td width="46%"><label> <input name="roll" type="text" id="roll" value="<%=s1.getRoll()%>" />
         	 </label></td>
        	<td width="46%"><label> <input name="sname" type="text" id="sname" value="<%=s1.getName()%>" />
         	 </label></td>
         	 <td width="46%"><label> <input name="city" type="text" id="city" value="<%=s1.getCity()%>" />
         	 </label></td>
         	 <td width="46%"><label> <input name="marks" type="text" id="marks" value="<%=s1.getMarks()%>" />
         	 </label></td>
        		
        	</tr>
        	
        </table>
        <%
			}
        %>
       
</form>
    </td>
  </tr>
  <tr>
    <td colspan="2" bordercolor="#000000" bgcolor="#000033"><span class="style2">Designed by Faizan Ahmed</span></td>
  </tr>
</body>
</html>
