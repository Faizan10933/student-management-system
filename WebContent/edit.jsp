<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="p1.Connect"%>
<%@ page import="p1.Student"%>
<%@ page import="java.util.ArrayList"%>
<%!
	Connect c1=new Connect();
	ArrayList<Student> arr;
%>
<%
	int roll=Integer.parseInt(request.getParameter("roll"));
	arr=c1.getRecordsByRoll(roll);
	Student s=(Student)arr.get(0);

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
    <td width="16%" height="508" valign="top" bordercolor="#000000">
	<ul>
	<li><a href="new.jsp">Add New</a></li>
	<li><a href="show.jsp">Show All</a></li>
	<li><a href="search.jsp">Search</a></li>
	<li><a href="index.html">Home</a></li>
	</ul>
	</td>
    <td width="84%" valign="top" bordercolor="#000000">
    <form id="form1" name="form1" method="post" action="update.jsp">
      <table width="91%" height="441" border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#000000">
        <tr>
          <td colspan="3" bgcolor="#333333"><h2 class="style4">Add New Student Details </h2></td>
          </tr>
        <tr>
          <td width="50%"><strong>Name</strong></td>
          <td width="4%"><strong>:</strong></td>
          <td width="46%"><label>
            <input name="sname" type="text" id="sname" value="<%=s.getName()%>"/>
          </label></td>
        </tr>
        <tr>
          <td><strong>Roll</strong></td>
          <td><strong>:</strong></td>
          <td><input name="roll" type="text" id="roll" value="<%=s.getRoll()%>"/></td>
        </tr>
        <tr>
          <td><strong>City</strong></td>
          <td><strong>:</strong></td>
          <td><label>
            <select name="city" id="city">
              <option value="0">Select</option>
              <%
              	String city[]={"RNG","ASN","DGP","BNK"};
              	String c=s.getCity();
              	
              	for(String i:city)
              	{
              		String x="";
              		if(i.equals(c))
              			x="selected=selected";
              %>
              <option value="<%=i%>" <%=x%>><%=i%></option>
              <%
              	}
              %>
              
            </select>
          </label></td>
        </tr>
        <tr>
          <td><strong>Marks</strong></td>
          <td><strong>:</strong></td>
          <td><input name="marks" type="text" id="marks" value="<%=s.getMarks()%>"/></td>
        </tr>
        <tr bgcolor="#333333">
          <td colspan="3"><div align="center">
            <label>
            <input type="submit" name="Submit" value="Update Records" />
            </label>
            
          </div></td>
          </tr>
		  <%
		  	if(s!=null)
			{
				if(s.equals("true"))
				{
		  %>
		  
        <tr>
          <td colspan="3" bgcolor="#00CC00"><div align="center" class="style5">Save Records Successfully...!!! </div></td>
        </tr>
		<%
			}
		else if(s.equals("false"))
		{
		%>
        <tr>
          <td colspan="3" bgcolor="#FF0000"><div align="center" class="style5">Problem In Data Save...!!! </div></td>
        </tr>
		<%
			}
			}
		%>
      </table>
        </form>
    </td>
  </tr>
  <tr>
    <td colspan="2" bordercolor="#000000" bgcolor="#000033"><span class="style2">Designed by Subinay Pal</span></td>
  </tr>
</table>
</body>
</html>
