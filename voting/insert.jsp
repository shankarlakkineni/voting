

<%@ page import="java.sql.*" %>
<%
String s=request.getParameter("party");
Connection con=null;
Statement st=null;
try{
Class.forName("com.mysql.jdbc.Driver");
con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","mysql");
st=con.createStatement();
String qry="insert into vote(party) values('"+s+"')";
	
	  
		st.executeUpdate(qry);
		out.print("<h1>Successfully submit you vote<h1>");
}
		catch(Exception e){
			out.print(e.getMessage());
		}
%>