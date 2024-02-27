<%@ include file="connect.jsp" %>
<%

try
{
	String id=request.getParameter("id");
	String str="permitted";
	
	Statement st=connection.createStatement();
	String query1="update bank_log set st1='"+str+"' where id='"+id+"'";
	st.executeUpdate(query1);
	
	connection.close();
	
	response.sendRedirect("per.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
