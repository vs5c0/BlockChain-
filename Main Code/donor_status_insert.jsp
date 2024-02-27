<%@ include file="connect.jsp" %>
<%

try
{
	String id=request.getParameter("id");
	String str="authorized";
	
	Statement st=connection.createStatement();
	String query1="update blood_donor set status='"+str+"' where id='"+id+"'";
	st.executeUpdate(query1);
	
	connection.close();
	
	response.sendRedirect("donor_status.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
