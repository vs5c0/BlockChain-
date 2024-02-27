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
          <h2><span> </span></h2>
          <p class="infopost style1">Blood donor  Login </p>
          <p class="infopost style1">&nbsp;</p>
          <form action="donor_insert.jsp"  method="post" enctype="multipart/form-data">
            <p>
              <label for="name"> User Name (required)<br />
              <br />
              </label>
              <input id="name" name="name" class="text" />
            </p>
            <p>
              <label for="password">Password (required)<br />
              <br />
              </label>
              <input type="password" id="password" name="password" class="text" />
            </p>
            <p>Blood group</p>
            <p>
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
            <p>
              <label for="label">Your Address<br />
              <br />
              </label>
              <textarea name="address" cols="50" id="label"></textarea>
            </p>
            <p>
              <label for="label2">Email Address (required)<br />
              <br />
              </label>
              <input id="label2" name="email" class="text" />
            </p>
            <p>
              <label for="mobile">Mobile Number (required)<br />
              <br />
              </label>
              <input id="mobile" name="mobile" class="text" />
            </p>
            <p>
              <label for="dob">Date of Birth (required)<br />
              <br />
              </label>
              <input id="dob" name="dob" class="text" />
</p>
            <p>
              <label for="gender">Select Gender (required)<br />
              </label>
</p>
            <p>
              <select id="s1" name="gender" class="text">
                <option>-Select-</option>
                <option>Male</option>
                <option>Female</option>
              </select>
            </p>
            <label for="pincode">Enter Pincode (required)<br />
            </label>
            <p>
              <input id="pincode" name="pincode" class="text" />
            </p>
            <label for="location">Enter Location (required)<br />
            </label>
            <p>
              <input id="loc" name="location" class="text" />
            </p>
            <label for="pic">Select Profile Picture (required)<br />
            </label>
            <p>
              <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p>
              <input name="submit" type="submit" value="REGISTER" />
            </p>
            <p>&nbsp; </p>
            <p></p>
            <p>&nbsp;</p>
            <label for="gender"></label><p></p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>
              <label for="dob"></label>
            </p>
            <p>&nbsp;</p>
            <p></p>
            <p>&nbsp;</p>
            <label for="password"></label><p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>
              <label for="label"></label>
            </p>
            <label for="email"></label>
            <p>&nbsp;</p>
            <label for="mobile"></label><p>&nbsp;</p>
            <label for="address"><br />
            </label>
            <p>&nbsp;</p>
            <label for="dob"></label>
            <p>&nbsp;</p>
          </form>
          <div class="clr"></div>
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
              <div align="justify"><a href="donor_login.jsp">Blood Donors</a></div>
            </li>
            <li></li>
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
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
