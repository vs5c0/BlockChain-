<a href="view_patient.jsp">Back</a>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.*" %>
<%@ include file="connect.jsp" %>
<%
String name=request.getParameter("name");

String group=request.getParameter("gp");

String id=null;




try
{

			
  Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","root");

PreparedStatement pst=con.prepareStatement("insert into  patient_to_donate values(?,?,?)");

pst.setString(1,id);
pst.setString(2,name);
pst.setString(3,group);

pst.executeUpdate();



out.print(" Blood donated Succesfully");



}
catch(Exception e)
{out.print(e);}
%>



