<a href="hosp_drop.jsp">Back
</a>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.*" %>
<%@ include file="connect.jsp" %>
<%
String name=request.getParameter("name");
String donor=request.getParameter("donor");
String group=request.getParameter("group");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String address=request.getParameter("address");
String id=null;
String status="No";
String hosp=(String)application.getAttribute("bank_name");

try
{
 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			

		    
			




     Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbmb","root","root");

PreparedStatement pst=con.prepareStatement("insert into  hosp_blood_detail values(?,?,?,?,?,?,?,?,?)");

pst.setString(1,id);
pst.setString(2,name);
pst.setString(3,donor);
pst.setString(4,group);
pst.setString(5,mobile);
pst.setString(6,email);
pst.setString(7,address);
pst.setString(8,dt);
pst.setString(9,"No");




pst.executeUpdate();
pst.executeUpdate("insert into req(hosp_name,status) values ('"+hosp+"','request')");
pst.executeUpdate("insert into purchase(hosp_name,gp,status) values ('"+name+"','"+group+"','request')");
pst.executeUpdate("insert into trans(donor_name,gp,task) values ('"+donor+"','"+group+"','donated')");
				

out.print(" Details Added Succesfully");
}
catch(Exception e)
{out.print(e);}
%>



