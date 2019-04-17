<%@page import="java.sql.*" %>
<% try{
	Class.forName("com.mysql.jdbc.Driver");
	String s="jdbc:mysql://localhost:3306/project";
	Connection con=DriverManager.getConnection(s,"root","mysql");
	String u=request.getParameter("t1");
	String p=request.getParameter("t3");
	String q=request.getParameter("t4");
	String e=request.getParameter("t5");
	PreparedStatement ps=con.prepareStatement("insert into reg values(?,?,?,?)");
	ps.setString(1,u);
	ps.setString(2,p);
	ps.setString(3,q);
	ps.setString(4,e);
	int n=0;
		n=ps.executeUpdate();
		if(n==0)
			out.print("reg failed");
		else
			out.print("successfully reg");
			con.close();
		}
		catch(Exception e){
			out.println(e);
		}
%>		