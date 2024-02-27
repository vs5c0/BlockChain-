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
.style26 {
	font-size: x-large;
	color: #FF0000;
}
.style28 {color: #FFFF00; font-weight: bold; }
.style30 {color: #FF0000; font-weight: bold; }
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
          <form id="form1" name="form1" method="post" action="patient_1.jsp">
            <p>&nbsp;</p>
            <p align="center" class="style26">Patient Details </p>
            <div align="center">
              <table width="486" height="98">
                <tr>
                  <td width="77" bgcolor="#FF0000"><div align="center" class="style28">Patient_name</div></td>
                  <td width="93" bgcolor="#FF0000"><div align="center" class="style28">Blood Group </div></td>
			      <td width="65" bgcolor="#FF0000"><div align="center" class="style28">Address</div></td>
				  <td width="76" bgcolor="#FF0000"><div align="center" class="style28">EMail</div></td>
				  <td width="151" bgcolor="#FF0000"><div align="center" class="style28">Mobile Number</div></td>
                </tr>
                <%

try
{
String patient_name;
String gp,address,email,mob;


Class.forName("com.mysql.jdbc.Driver");	
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbmb","root","root");
Statement st=con.createStatement();

String hname=String.valueOf(application.getAttribute("hosp_name"));

ResultSet rs=st.executeQuery("select  *  from patient_log  where hname='"+hname+"' ");
while(rs.next()==true)
{
 patient_name=rs.getString(2);
 gp=rs.getString(3);
 address=rs.getString(4);
 email=rs.getString(5);
 mob=rs.getString(6);


%>
                <tr>
                  <td height="63"><div align="center" class="style30"><%=patient_name%></div></td>
                  <td><div align="center" class="style30"><%=gp%></div></td>
				   <td><div align="center" class="style30"><%=address%></div></td>
				    <td><div align="center" class="style30"><%=email%></div></td>
					 <td><div align="center" class="style30"><%=mob%></div></td>
                </tr>
                <%}

}
catch(Exception e)
{out.print(e);}
%>
              </table>
            </div>
            <p>&nbsp;</p>
            <p align="center">&nbsp;</p>
            <div align="center"></div>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </form>
          <p align="center" class="style26">&nbsp;</p>
          <h2>&nbsp;</h2>
          <p>&nbsp;</p>
          <p align="left">&nbsp;</p>
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
          <div class="clr"></div>
          <ul class="sb_menu">
            <li>
              <div align="justify"><a href="index.html">Home</a></div>
            </li>
            <li>
              <div align="justify"><a href="view_h_donor.jsp">View Blood Donors </a></div>
            </li>
            <li> 
              <div align="justify"> <a href="patient_detail.jsp">Feed Patient Detail </a></div>
            </li>
            <li>
              <div align="justify"><a href="view_req.jsp">View Blood Banker &amp; Req Blood</a> </div>
            </li>
            <li>
              <div align="justify"><a href="v.jsp">View Blood Detail </a></div>
            </li>
            <li>
              <div align="justify"><a href="purchase_req.jsp">Req For Blood To Bank </a></div>
            </li>
			 <li>
              <div align="justify"><a href="view_patient.jsp">View Patient </a></div>
            </li>
			<li>
              <div align="justify"><a href="hosp_log.jsp">Logout </a></div>
            </li>
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
