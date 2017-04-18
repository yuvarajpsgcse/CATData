<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("UserID");    
    String pwd = request.getParameter("password");
    //Class.forName("com.mysql.jdbc.Driver");
    //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            //"root", "dbpass");
  //Statement st = con.createStatement();
    //ResultSet rs;
    
   String  username="test";
   String password="test";		
   
   
   // rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    //if (rs.next()) {
    	
    	
   if(username.equals(userid) && password.equals(pwd))
    	{
        
        response.sendRedirect("HomePage.jsp");
    } 
%>