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
.style26 {font-size: 24px; color: #FF0000; font-weight: bold; }
.style27 {
	color: #FF0000;
	font-weight: bold;
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
          <p class="style26">Add Patient Details  !!!          </p>
          <form action="patient_insert.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
            <p>&nbsp;</p>
            <p>
              <label for="name"><span class="style27">Name (required)<br />
              <br />
              </span></label>
              <span class="style27">
              <input id="name" name="name" class="text" />
            </span></p>
            <p class="style27">
              <label for="password">Patient Blood group  (required)<br />
              <br />
              </label>
              <select name="bg">
                 <option>---Select---</option>
				<option>A Positive</option>
				<option>A Negative</option>
				<option>B Positive</option>
				<option>B Negative</option>
				<option>O Positive</option>
				<option>0 Negative</option>
				<option>AB Positive</option>
				<option>AB Negative</option>
              </select>
            </p>
            <p class="style27">
              <label for="label"> Address (required)<br />
              <br />
              </label>
              <textarea name="address" cols="50" id="label"></textarea>
            </p>
            <p class="style27">
              <label for="label2">Email Address (required)<br />
              <br />
              </label>
              <input id="label2" name="email" class="text" />
            </p>
            <p class="style27">
              <label for="mobile">Mobile Number (required)<br />
              <br />
              </label>
              <input id="mobile" name="mobile" class="text" />
            </p>
            <p>
              <span class="style27">
              <label for="pic">Select  Picture (required)<br />
              </label>
              </span>
              <strong>
              <label for="pic"></label>
              </strong>
              <label for="pic"><br />
              </label>
              <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p>
              <label for="dob"></label>
            </p>
            <label for="pincode"></label>
            <label for="location"></label>
            <p>
              <input name="submit" type="submit" value="REGISTER" />
            </p>
            <h2>&nbsp;</h2>
            <p>&nbsp;</p>
            <p align="left">&nbsp;</p>
            <p class="infopost style1">&nbsp;</p>
            <div class="img"></div>
            <div class="clr"></div>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </form>
          <p>
            <label for="name"></label>
          </p>
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
