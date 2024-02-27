<%@ include file="connect.jsp" %>
<%

try
{
	String id=request.getParameter("id");
	String str="requested";
	
	Statement st=connection.createStatement();
	String query1="update purchase set status='"+str+"' where id='"+id+"'";
	st.executeUpdate(query1);
	
	connection.close();
	
	response.sendRedirect("purchase_req.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
