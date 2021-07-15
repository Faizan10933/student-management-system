<%@ page import="p1.Connect"%>
<%!
	Connect c1=new Connect();
%>

<%
	int roll=Integer.parseInt(request.getParameter("roll"));
	boolean b=c1.delete_records(roll);
	response.sendRedirect("show.jsp");
%>