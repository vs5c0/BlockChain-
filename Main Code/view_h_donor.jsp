<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="connect.jsp" %>
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
.style7 {font-size: 12px; font-weight: bold; }
.style29 {font-size: 14px; font-weight: bold; color: #FF0000; }
.style30 {
	color: #FF0000;
	font-size: 14px;
}
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
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>View Hospital Blood Details !!! </span></h2>
          <h2>&nbsp;</h2>
          <div align="left">
            <table width="689" border="1" align="right">
              <tr>
                <td width="33"><div align="center" class="style29">Id</div></td>
                <td width="87"><div align="center" class="style29">Bank_name</div></td>
                <td width="53"><div align="center" class="style29">Donor </div></td>
                <td width="65" height="33"><div align="center" class="style7 style30">Group</div></td>
                <td width="83"><div align="center" class="style29">Mob</div></td>
                <td width="83"><div align="center" class="style29">Email</div></td>
                <td width="78"><div align="center" class="style29">Address</div></td>
                <td width="53"><div align="center" class="style29">Date</div></td>
                <td width="66"><div align="center" class="style29">Status</div></td>
              </tr>
              <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0;

      	try 
	{
        
		
		   String hname=String.valueOf(application.getAttribute("hosp_name"));
           String query="select * from hosp_blood_detail where hosp_name='"+hname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		s9=rs.getString(9);
		
	
		%>
              <tr>
                <td><div align="center"><%=i%></div></td>
                 <td><div align="center"><%=s2%></div></td>
                <td height="27"><div align="center"><%=s3%></div></td>
                <td><div align="center"><%=s4%></div></td>
				<td><div align="center"><%=s5%></div></td>
				<td><div align="center"><%=s6%></div></td>
				<td><div align="center"><%=s7%></div></td>
				<td><div align="center"><%=s8%></div></td>
				
				
                <%
			
			if(s9.equalsIgnoreCase("No"))
			{
			
				%>
                <td><div align="center"><a href="no_h_status_insert.jsp?id=<%=i%>&bg=<%=s4%>"><%=s9%></a></div></td>
                <%
		
			}
			else
			{
				%>
                <td width="24" ><div align="center"><%=s9%></div></td>
                <%
			}%>
                
              </tr>
              <%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
          </div>
          <p>&nbsp;</p>
          
          <p class="infopost style1"><a href="hosp_main.jsp">Back</a></p>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Main</span> Menu</h2>
          <ul class="sb_menu">
            <li>
              <div align="justify"><a href="index.html">Home</a></div>
            </li>
            <li>
              <div align="justify"><a href="hosp_main.jsp">Hospitals</a></div>
            </li>
            <li> 
              <div align="justify"> <a href="hosp_log.jsp">Logout</a></div>
            </li>
            <li></li>
            <li></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2>&nbsp;</h2>
      </div>
      <div class="col c2">
        <h2>&nbsp;</h2>
      </div>
      <div class="col c3">
        <h2>&nbsp;</h2>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="rf">D</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
