<%@ page import="p1.Connect" %>
<%!
	Connect c1=new Connect();
	%>
	<%
	String name=request.getParameter("sname");
	int roll=Integer.parseInt(request.getParameter("roll"));
	String city=request.getParameter("city");
	int marks=Integer.parseInt(request.getParameter("marks"));
	boolean b=c1.save_records(roll,name,city,marks);
	response.sendRedirect("new.jsp?save="+b);
	%>