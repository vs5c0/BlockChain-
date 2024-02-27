<%@ include file="connect.jsp" %>
<%

try
{
	String id=request.getParameter("id");
	String str="requested";
	
	Statement st=connection.createStatement();
	String query1="update bank_log set st1='"+str+"' where id='"+id+"'";
	st.executeUpdate(query1);
	
	connection.close();
	
	response.sendRedirect("view_req.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
