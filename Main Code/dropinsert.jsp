<a href="donor_main.jsp">Back
</a>
 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

 
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
<%
String name=request.getParameter("name");
String donor=request.getParameter("donor");
String group=request.getParameter("group");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String address=request.getParameter("address");
String id=null;
String status="waiting";

String hosp=(String)application.getAttribute("hosp_name");

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

String filename="filename.txt";
      		PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(group));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			String h1 = bi1.toString(16);



PreparedStatement pst=con.prepareStatement("insert into  blood_detail values(?,?,?,?,?,?,?,?,?,?)");

pst.setString(1,id);
pst.setString(2,name);
pst.setString(3,donor);
pst.setString(4,group);
pst.setString(5,mobile);
pst.setString(6,email);
pst.setString(7,address);
pst.setString(8,dt);
pst.setString(9,"waiting");
pst.setString(10,h1);

pst.executeUpdate();
pst.executeUpdate("insert into req(hosp_name,status) values ('"+hosp+"','request')");
pst.executeUpdate("insert into purchase(hosp_name,gp,status) values ('"+hosp+"','"+group+"','request')");
pst.executeUpdate("insert into trans(donor_name,gp,task) values ('"+donor+"','"+group+"','donated')");
		


out.print(" Details Added Succesfully");
}
catch(Exception e)
{out.print(e);}
%>



