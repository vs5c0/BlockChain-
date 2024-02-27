<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<%
String name=request.getParameter("name");
String gp=request.getParameter("gp");
String status="donated";
String id=null;
String str1="Blood not available";
String blood_name=(String)application.getAttribute("bg1");
try
{
     Statement st1=connection.createStatement();
	String query22="select * from available_blood_hosp where bgn='"+blood_name+"'";
	ResultSet rs=st1.executeQuery(query22);
	
	 if(rs.next()==true)
	{
	int t=Integer.parseInt(rs.getString(2));
	
	 if(t<=0)
	   {
	 
	out.println("blood not available");
	
	}
	
	else if(t>0)
	{
	
	 int t1=t-1;
	
	String tb=String.valueOf(t1);
	
	Statement st2=connection.createStatement();
	String query2="update available_blood_hosp set  total='"+tb+"' where bgn='"+blood_name+"'";
	st2.executeUpdate(query2);
	
	
	
/*PreparedStatement pst=connection.prepareStatement("insert into patient_to_donate values(?,?,?,?)");

pst.setString(1,id);
pst.setString(2,name);
pst.setString(3,gp);
pst.setString(4,status);

pst.executeUpdate();*/

out.print(" BLOOD DONATED SUCCESSFULLY");
}
}
}
catch(Exception e)
{out.print(e);}
%>


