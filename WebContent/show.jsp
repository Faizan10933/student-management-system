<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="p1.Connect"%>
<%@ page import="p1.Student"%>
<%@ page import="java.util.ArrayList"%>
<%!
	Connect c1=new Connect();
	ArrayList<Student> arr;
%>
<%
	arr=c1.getRecords();
	int n=arr.size();
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
    <td width="16%" height="508" valign="top" bordercolor="#000000">
	<ul>
	<li><a href="new.jsp">Add New</a></li>
	<li><a href="show.jsp">Show All</a></li>
	<li><a href="search.jsp">Search</a></li>
	<li><a href="index.html">Home</a></li>
	</ul>
	</td>
    <td width="84%" valign="top" bordercolor="#000000"><table width="100%" border="1" cellspacing="0" cellpadding="10">
      <tr>
        <td colspan="6" bordercolor="#000000" bgcolor="#000066"><h1 class="style2">All Student Details </h1></td>
        </tr>
      <tr>
        <td bordercolor="#000000"><div align="center"><strong>Roll</strong></div></td>
        <td bordercolor="#000000"><div align="center"><strong>Name</strong></div></td>
        <td bordercolor="#000000"><div align="center"><strong>City</strong></div></td>
        <td bordercolor="#000000"><div align="center"><strong>Marks</strong></div></td>
        <td colspan="2" bordercolor="#000000"><div align="center"><strong>Action</strong></div></td>
      </tr>
      <%
      	for(int i=0;i<n;i++)
      	{
      		
      	Student s=(Student)arr.get(i);
      	int roll=s.getRoll();
      %>
      <tr>
      <td><%=s.getRoll() %></td>
      <td><%=s.getName() %></td>
      <td><%=s.getCity() %></td>
      <td><%=s.getMarks() %></td>
      <td width="50" align="center"><a href="edit.jsp?roll=<%=roll %>"><img src="images/icn_edit.png"></a></img></td>
       <td width="50" align="center"><a href="del.jsp?roll=<%=roll %>"><img src="images/icn_trash.png"></a></img></td>
      </tr>
      <%
      	}
      %>
    </table>
    </td>
  </tr>
  <tr>
    <td colspan="2" bordercolor="#000000" bgcolor="#000033"><span class="style2">Designed by Faizan Ahmed</span></td>
  </tr>
</table>
</body>
</html>
