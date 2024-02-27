<title>Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
			application.setAttribute("bank_name", name);
try {
		String sql = "SELECT * FROM bank_log where name='" + name+ "' and password='" + password + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next())
		{
		
			String sql1 = "SELECT * FROM bank_log where name='" + name+ "' and password='" + password + "' and status='Authorized' ";
			ResultSet rs1 = stmt.executeQuery(sql1);
			if (rs1.next())
			{
				response.sendRedirect("bank_main.jsp");
			}
			else
			{
				response.sendRedirect("bank_auth.jsp");
			}			
		}	
		else
		{
			response.sendRedirect("wronglogin.html");
		}

		
	} catch (Exception e) {
		out.print(e);
		e.printStackTrace();
	}
%>

