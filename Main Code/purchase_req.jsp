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
.style21 {font-size: 14px}
.style23 {color: #666666; font-weight: bold;}
.style24 {color: #FF00FF}
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
          <li><a href="support.html">Admin</a></li>
          <li><a href="about.html">Blood Bankers </a></li>
          <li><a href="blog.html">Blood Donors</a></li>
          <li><a href="contact.html">Hospitals</a></li>
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
          <h2><span></span></h2>
          <p>&nbsp;</p>
          <table width="494" border="4" cellpadding="2" cellspacing="2">
            <tr>
              <th width="218" scope="col">Blood Group Names </th>
              <th width="250" scope="col">Price</th>
            </tr>
            <tr>
              <th scope="col"><div align="center">A positive </div></th>
              <th scope="col"><div align="center">1000</div></th>
            </tr>
            <tr>
              <td><div align="center">B positive</div></td>
              <td><div align="center">2000</div></td>
            </tr>
            <tr>
              <td><div align="center">AB positive</div></td>
              <td><div align="center">3000</div></td>
            </tr>
            <tr>
              <td><div align="center">O positive</div></td>
              <td><div align="center">1000</div></td>
            </tr>
            <tr>
              <td><div align="center">A negative </div></td>
              <td><div align="center">1500</div></td>
            </tr>
            <tr>
              <td><div align="center">B negative </div></td>
              <td><div align="center">1000</div></td>
            </tr>
            <tr>
              <td><div align="center">AB negative </div></td>
              <td><div align="center">2500</div></td>
            </tr>
            <tr>
              <td><div align="center">O  negative </div></td>
              <td><div align="center">4000</div></td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <table width="685" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <tr>
              <td width="108" height="30"><div align="center" class="style21"><span class="style23"> ID </span></div></td>
              <td width="183"><div align="center">Bank Name </div></td>
              <td width="183"><div align="center" class="style21"><span class="style23">Blood    Name </span></div></td>
              <td width="171"><div align="center" class="style21"><span class="style23"> Status </span></div></td>
              <%	  
			  
		  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
      	try 
	{
	
	String bank=(String)application.getAttribute("bank_name");
	
      		String query="select * from purchase"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s4=rs.getString(3);
		s5=rs.getString(4);
		%>
            </tr>
            <tr>
              <td height="28"><div align="center"><%=i%></div></td>
              <td><div align="center"><%=bank%></div></td>
			  
              <td height="28"><div align="center"><%=s4%></div></td>
              <%	
			if(s5.equalsIgnoreCase("request"))
			{
			
		%>
              <td><div>
                  <div align="center"><a href="purchase_insert.jsp?id=<%=i%>"><%=s5%></a></div>
              </div></td>
              <%
		
			}else
			{
		%>
              <td width="28"><div>
                  <div align="center"><%=s5%></div>
              </div></td>
            </tr>
            <%
			  }
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
          <p>&nbsp;</p>
          <p align="left"><a href="hosp_main.jsp" class="style24">Back</a></p>
          <p class="infopost style1">&nbsp;</p>
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
