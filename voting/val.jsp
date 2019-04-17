    
    
 <%@ page import="java.sql.*"%>
 <% try{Class.forName("com.mysql.cj.jdbc.Driver");
 String s="jdbc:mysql://localhost:3306/project";
 Connection con=DriverManager.getConnection(s,"root","mysql");
 String u=request.getParameter("t1");

 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from reg");
 int f=0;
while(rs.next())
		{
		if(rs.getString(4).equals(u))
		{	%>
			<jsp:forward page="party1.jsp"/>
			<%
			 break;
			 }
			 }
			  if(f==0)
			  {
			  out.print("user is not registered");
			  con.close();
		}}
	catch(Exception e)
	{
		out.print(e);
		}
		%>
		