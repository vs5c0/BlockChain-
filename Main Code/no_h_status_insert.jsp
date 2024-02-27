<%@ include file="connect.jsp" %>
<%

try
{
	String id=request.getParameter("id");
	String bg=request.getParameter("bg");
	String str="donated";
	int count=0;
	String id1=null;
	
	
	
	Statement st=connection.createStatement();
	String query1="update hosp_blood_detail set status='"+str+"' where id='"+id+"'";
	st.executeUpdate(query1);
	
	Statement st1=connection.createStatement();
	String query22="select * from available_blood_hosp where bgn='"+bg+"'";
	ResultSet rs=st1.executeQuery(query22);
	
	if(rs.next()==true)
	{
	
	int t=Integer.parseInt(rs.getString(2));
	
	 int t1=t+1;
	
	String tb=String.valueOf(t1);
	
	Statement st2=connection.createStatement();
	String query2="update available_blood_hosp set  total='"+tb+"' where bgn='"+bg+"'";
	st2.executeUpdate(query2);
	
	
	}
	
	else if(rs.next()!=true)
	{
	String to="1";
	
	
	PreparedStatement pst=connection.prepareStatement("insert into  available_blood_hosp values(?,?)");


pst.setString(1,bg);
pst.setString(2,to);
	
	
	pst.executeUpdate();
	
	}
	
	connection.close();
	
	response.sendRedirect("view_h_donor.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
