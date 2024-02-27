 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>                         

		  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Blockchain based Management of Blood Donation</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #FF0000;
}
.style24 {color: #FF00FF}
.style2 {color: #FFFF00}
.style4 {font-weight: bold}
.style5 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
<div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.html">Admin</a></li>
          <li><a href="bank_log.jsp">Blood Bankers </a></li>
          <li><a href="donor_login.jsp">Blood Donors</a></li>
          <li><a href="hosp_log.jsp">Hospitals</a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html">Blockchain based Management of Blood Donation <small></small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <h2>&nbsp;</h2>
          <%
					  
						// Creation Of Blockchain 
						
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,hsign;
						int i=0,j=1,k=0;
												
						int count1=1;
						
						try 
						{
						String str1 = " select distinct(hcode) from blood_group ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						hsign = rs1.getString(1);
//						count1=count1+1;
						   	String query="select * from blood_donor where hcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s1=rs.getString(4);
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
		  <table width="961" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="28" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong> SI NO </strong></div></td>
              <td  width="77" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Name Image</strong></div></td>
              <td  width="64" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Blood Group</strong></div></td>
			  <td  width="81" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Address</strong></div></td>
		      <td  width="51" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Email</strong></div></td>
			  <td  width="90" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Mobile Number</strong></div></td>
		      <td  width="59" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>DOB</strong></div></td>
		      <td  width="100" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Gender</strong></div></td>
		      <td  width="106" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Gender</strong></div></td>
		      <td  width="136" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Pin Code</strong></div></td>
			  <td  width="145" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15 style2"><strong>Location</strong></div></td>
			  
          </tr>
		 
		 
         <h3 align="center">
<p align="center" class="style4"><span class="style1">Blood Donor  Block Chain ::</span><span class="style5"> <%=s1%></span><br>
			    <span class="style1">Donor Category Hash Code    ::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
			 					i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(9);								
								s8=rs.getString(10);
							    s9=rs.getString(11);

					%>
	      </div>
		  
  <tr>
              <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
			
		     <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style4 style5">&nbsp;</p>
               <div align="center" class="style22 style4 style5">
                   
                      <input  name="image" type="image" src="donorprofile.jsp?imgid=<%=i%>"  />
                    
                    <p>&nbsp; </p>
               </div></td>
			  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    <%out.println(s1);%>
					<p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                  
                      <%out.println(s2);%>
                   
                    <p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                  
                      <%out.println(s3);%>
                   
                    <p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    
                      <%out.println(s4);%>
                  
                    <p>&nbsp; </p>
              </div></td>
			  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    
                      <%out.println(s5);%>
                  
                    <p>&nbsp; </p>
              </div></td>
			  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    
                      <%out.println(s6);%>
                  
                    <p>&nbsp; </p>
    </div></td>
			  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    
                      <%out.println(s7);%>
                  
                    <p>&nbsp; </p>
    </div></td>
			  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    
                      <%out.println(s8);%>
                  
                    <p>&nbsp; </p>
    </div></td>
			  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    
                      <%out.println(s9);%>
                  
                    <p>&nbsp; </p>
    </div></td>
            </tr>
            <p align="center">
         <%
								j=j+1; }
			   }
			 
			 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		   		 		  
	
</table>
            </p>
   <p align="center"><a href="admin_main.html">Back</a></p>
          <p>&nbsp;</p>
          <p align="left"><a href="admin_main.html" class="style24">Back</a></p>
          <p class="infopost style1">&nbsp;</p>
            <div align=center></div>
</body>
</html>
