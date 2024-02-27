<%@ include file="connect.jsp" %>
<%

try
{
	String id=request.getParameter("id");
	String bg=request.getParameter("bg");
	
	String str="sold";
	String str1="Blood not available";
	String str2="Blood group not available";
	int count=0;
	String id1=null;
	
	
	
 	Statement st1=connection.createStatement();
	String query22="select * from available_blood where bgn='"+bg+"'";
	ResultSet rs=st1.executeQuery(query22);
	
	
	
	 if(rs.next()==true)
	{
	
	int t=Integer.parseInt(rs.getString(2));
	
	   if(t<=0)
	   {
	 
	Statement st6=connection.createStatement();
	String query6="update purchase set status='"+str1+"' where id='"+id+"'";
	st6.executeUpdate(query6);
	
	}
	  
	  
	 
	   else if(t>0)
       {
	   
	 int t1=t-1;
	
	String tb=String.valueOf(t1);
	
	Statement st2=connection.createStatement();
	String query2="update available_blood set  total='"+tb+"' where bgn='"+bg+"'";
	st2.executeUpdate(query2);
	
	Statement st11=connection.createStatement();
	String query221="select * from available_blood_hosp where bgn='"+bg+"'";
	ResultSet rs1=st11.executeQuery(query221);
	
	if(rs1.next()==true)
	{
	int th=Integer.parseInt(rs1.getString(2));
	int th1=th+1;
	
	String tbh=String.valueOf(th1);
	application.setAttribute("tbh1",tbh);
	
	Statement st2h=connection.createStatement();
	String query2h="update available_blood_hosp set  total='"+tbh+"' where bgn='"+bg+"'";
	st2h.executeUpdate(query2h);
	
	Statement st5=connection.createStatement();
	String query5="update purchase set status='"+str+"' where id='"+id+"'";
	st5.executeUpdate(query5);
	}
	
	
	 else if(rs1.next()==false)
	{
	
	 String to="1";
	PreparedStatement pst=connection.prepareStatement("insert into  available_blood_hosp values(?,?)");
    pst.setString(1,bg);
    pst.setString(2,to);
    pst.executeUpdate();

    Statement st=connection.createStatement();
	String query1="update purchase set status='"+str+"' where id='"+id+"'";
	st.executeUpdate(query1);
   }
   
  
   }
	}
	
	else if(rs.next()==false)
	  {
	  Statement st7=connection.createStatement();
	String query7="update purchase set status='"+str2+"' where id='"+id+"'";
	st7.executeUpdate(query7);
	}
	
	
	
connection.close();
response.sendRedirect("sale.jsp");
}

catch(Exception e)
{
out.println(e);
}

%>
