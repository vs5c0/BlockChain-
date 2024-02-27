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
.style31 {font-size: 9px}
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
          <h2><span> </span>View Sold Details </h2>
          <h2>&nbsp;</h2>
          
          <div align="center">
            <table width="309" border="1" align="left">
              <tr>
                <td width="33"><div align="center" class="style29">Id</div></td>
                <td width="87"><div align="center" class="style29">hosp_name</div></td>
                <td width="65"><div align="center" class="style29">Group</div></td>
                <td width="66"><div align="center" class="style29">Status</div></td>
              </tr>
              <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0;

      	try 
	{
        
           String query="select * from purchase"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
		   String hosp=(String)application.getAttribute("hosp_name");
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		
		
	
		%>
              <tr>
                <td height="27"><div align="center"><%=i%></div></td>
                 <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s3%></div></td>
			    <%
			
			if(s4.equalsIgnoreCase("requested"))
			{
			
				%>
                <td><div align="center"><a href="sales.jsp?id=<%=i%>&bg=<%=s3%>"><%=s4%></a></div></td>
                <%
		
			}
			else
			{
				%>
                <td width="24" ><div align="center"><%=s4%></div></td>
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
          <p class="infopost style1">&nbsp;</p>
          <p align="left" class="infopost style1">&nbsp;</p>
          <p class="infopost style1">&nbsp;</p>
          <p class="infopost style1">&nbsp;</p>
          <p class="infopost style1">&nbsp;</p>
          <p align="right" class="infopost style1">&nbsp;</p>
          <a href="bank_main.jsp">Back</a>
          <div class="img"></div>
          <div class="clr">
            <div align="right"></div>
          </div>
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
          <div class="clr"></div>
          <ul class="sb_menu">
            <li>
              <div align="justify"><a href="index.html">Home</a></div>
            </li>
            <li>
              <div align="justify"><a href="bank_log.jsp">Blood Bankers </a></div>
            </li>
            <li>
              <div align="justify"><a href="bank_log.jsp">Logout</a></div>
            </li>
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
