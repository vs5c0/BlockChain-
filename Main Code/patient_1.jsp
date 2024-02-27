<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String gp=request.getParameter("gp");
String status="donated";
String id=null;

try
{
    Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbmb","root","root");

PreparedStatement pst=con.prepareStatement("insert into patient_to_donate values(?,?,?,?)");

pst.setString(1,id);
pst.setString(2,name);
pst.setString(3,gp);
pst.setString(4,status);

pst.executeUpdate();

out.print(" BLOOD DONATED SUCCESSFULLY");
}
catch(Exception e)
{out.print(e);}
%>


