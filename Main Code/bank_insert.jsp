<title>Registration authen</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String name=null;     
        			String password=null;
					String status="waiting";
					String email=null;
					String mobile=null;
					String address=null;
					String st1="request";
					
					
				
					FileInputStream fs=null;
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("password"))
							{
								password=multi.getParameter(paramname);
							}
							
							
							if(paramname.equalsIgnoreCase("address"))
							{
								address=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mobile=multi.getParameter(paramname);
							}
							
									
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) {
									if (i != -1) {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++){
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4){
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
			 			String query1="select * from bank_log  where name='"+name+"'"; 
						Statement st=connection.createStatement();
						ResultSet rs1=st.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		
								out.println("Data Owner Name Already Exits");							
							%>
							<p><a href="bank_reg.jsp">Back</a>         <a href="index.html">Home</a> </p>
				
							
							<%
					   }
					   else
					   {
					PreparedStatement ps=connection.prepareStatement("insert into bank_log(name,password,address,email,mob,image,status,st1) values(?,?,?,?,?,?,?,?)");
						ps.setString(1,name);
						ps.setString(2,password);
						
						ps.setString(3,address);
						ps.setString(4,email);	
						ps.setString(5,mobile);
						ps.setString(7,"waiting");
						ps.setString(8,"request");
						
						ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));	
				//		ps.setString(11,sk);		
						
						if(f == 0)
							ps.setObject(6,null);
						else if(f == 13)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(6,fs1,fs1.available());
						}
					   
						
						int x=ps.executeUpdate();
						if(x>0){
								out.println("Registered Sucessfully");							
							
			%>
			<p><a href="bank_log.jsp">Back</a>         <a href="index.html">Home</a> </p>

			
			<%
					}
						}
						} 
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
