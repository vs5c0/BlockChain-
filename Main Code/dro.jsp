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
.style24 {font-size: x-large}
.style27 {color: #FF0000; font-weight: bold; }
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
		
          <form id="form1" name="form1" method="post" action="dropinsert.jsp">
            <p class="style24">Welcome to Donor </p>
            <div align="center">
              <table width="427" height="239" border="2" cellpadding="2" cellspacing="2">
                <tr>
                  <th width="207" bgcolor="#FFFF00" scope="row"><span class="style27">
                    <label>
                    <%
			String bank_name=(String)application.getAttribute("bank_name");
			String d_name=(String)application.getAttribute("donor_name");
			
			String address=(String)application.getAttribute("address");
			String email=(String)application.getAttribute("email");
			String mno=(String)application.getAttribute("mno");
		ArrayList al=new ArrayList();
		String str="select * from bank_log";
		ResultSet rs= connection.createStatement().executeQuery(str);

		%>
                    Blood Bank  Name </label>
                    <label></label>
                  </span></th>
                  <td width="198"><select name="name">
                    <% while(rs.next())
					

{%>
           <option><%=rs.getString(2)%></option>
                    <%}%>
                  </select></td>
                </tr>
                <tr>
                  <th bgcolor="#FFFF00" scope="row"><span class="style27">Donor name </span></th>
                  <td><input type="text" name="donor"  value="<%=d_name%>" readonly/></td>
                </tr>
                <tr>
                  <th bordercolor="#FFFF00" bgcolor="#FFFF00" scope="row"><span class="style27">Enter Your Blood Group </span></th>
                  <td><select name="group" size="1">
                    
                 <option>---Select---</option>
				<option>A Positive</option>
				<option>A Negative</option>
				<option>B Positive</option>
				<option>B Negative</option>
				<option>O Positive</option>
				<option>0 Negative</option>
				<option>AB Positive</option>
				<option>AB Negative</option>
                  </select></td>
                </tr>
                <tr>
                  <th bgcolor="#FFFF00" scope="row"><span class="style27">Enter Your Mobile Number </span></th>
                  <td><input type="text" value="<%out.print(mno);%>"  name="mobile" /></td>
                </tr>
                <tr>
                  <th bgcolor="#FFFF00" scope="row"><span class="style27">Enter Your Email-id</span></th>
                  <td><input type="text" value="<%out.print(email);%>"  name="email" /></td>
                </tr>
                <tr>
                  <th height="51" bgcolor="#FFFF00" scope="row"><span class="style27">Enter Your Address </span></th>
                  <td><textarea name="address"><%out.print(address);%> </textarea></td>
                </tr>
              </table>
              <p>
                <input type="submit" name="Submit" value="Donate" />
              </p>
            </div>
            </form>
          <p class="infopost style1">&nbsp;</p>
          <div class="img"></div>
          </div>
        <div class="article">
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
              <div align="justify"><a href="donor_main.jsp">Blood Donors </a></div>
            </li>
            <li> 
              <div align="justify"> <a href="donor_login.jsp">Logout</a></div>
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
