<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
<%@page import ="java.text.*" %>
<%@page import ="java.util.*" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK REL="stylesheet" HREF="style.css" TYPE="text/css">
<title>CAT Account Bulletin</title>
</head>

<body bgcolor="#D8CEF6"> 
        <h1><center>CAT Account Bulletin</center></h1> 
            <%
           String pname = request.getParameter("projectname");
            String pid = request.getParameter("projectid");
            String ptype = request.getParameter("projecttype");
            String cn = request.getParameter("contractnumber");
            String sdate = request.getParameter("startdate");
            String edate = request.getParameter("enddate");
            String hcount = request.getParameter("headcount");
            String uom = request.getParameter("uom");
            String tcv = request.getParameter("TCVvalue");

            String query;
            String stmt1;

            try
    		{

    		Class.forName("com.mysql.jdbc.Driver");
    		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cat","root","");
    		Statement stmt=conn.createStatement();  
            //query="insert into cataccountdetail(Project Name,Project ID,Project Type,Contract Number,Start Date,End Date,Head Count,UOM,TCV Value)"+"values('"+pname+"','"+pid+"','"+ptype+"','"+cn+"','"+sdate+"','"+edate+"','"+hcount+"','"+uom+"','"+tcv+"')";
    		
            
            
                //PreparedStatement pstatement = null;
                //int updateQuery = 0;

            query="INSERT INTO `cat` ( `Project Name` , `Project ID` , `Project Type`,`Contract Number`,`Start Date`,`End Date`,`Head Count`,`UOM`,`TCV value` )"+ "values ("+"\""+pname+"\""+","+"\""+pid+"\""+","+"\""+ptype+"\""+","+"\""+cn+"\""+","+"\""+sdate+"\""+","+"\""+edate+"\""+","+"\""+hcount+"\""+","+"\""+uom+"\""+","+"\""+tcv+"\""+")"; 

                 
                //query="insert into cataccountdetail(Project ID ,Project Type,Contract Number,Start Date,End Date,Head Count,UOM,TCV Value)"+"values('"+pid+"','"+ptype+"','"+cn+"','"+sdate+"','"+edate+"','"+hcount+"','"+uom+"','"+tcv+"')";
              //query = "INSERT INTO cataccountdetail(Project ID ,Project Type,Contract Number,Start Date,End Date,Head Count,UOM,TCV Value) VALUES (?,?,?,?,?,?,?,?)";
              	      /* createStatement() is used for create statement
              object that is used for 
		sending sql statements to the specified database. */
		
		
	/*
            		  
            int i=stmt.executeUpdate(query);    
              pstatement = conn.prepareStatement(query);
              //pstatement.setString(1, pname);
			  pstatement.setString(2, pid);
			  pstatement.setString(3, ptype);
			  pstatement.setString(4, cn);
			  pstatement.setString(5, sdate);
			  pstatement.setString(6, edate);
			  pstatement.setString(7, hcount);
			  pstatement.setString(8, uom);
			  pstatement.setString(9, tcv);
              updateQuery = pstatement.executeUpdate(); 
                            if (updateQuery != 0) { 
                            
            
            */
            
            
            
            
            
            
            
            
            
            
            int i=stmt.executeUpdate(query);  

    		// Statement stat = conn.createStatement();

           //ResultSet rst = stat.executeUpdate(query);

          /*  rst.close();
            stat.close();
            conn.close(); */
    		//response.sendRedirect("addempsuccess.jsp"); 
            
    		
    		}
            catch(Exception e){  

            	out.print(e);  

            }finally {  

           // out.close();  
            }  

    		%>
</body>
</html> 