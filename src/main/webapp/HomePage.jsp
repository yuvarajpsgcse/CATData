<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
       <h1>   CAT Account Bulletin </h1>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAT Account Bulletin</title>
</head>
<body>
    <form>  
    
  
<input type="button" value="Update Data" name="Update Data"
    onclick="openPage('Testpage.jsp')"/><br/><br/>
    <input type="button" value="View Data" name="Update Data"
    onclick="openPage('Enter ViewData.jsp')"/><br/><br/>
    <input type="button" value="Export Data" name="Update Data"
    onclick="openPage('ExportData.jsp')"/>
    
    
    <script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script> 
    </form>  
</body>
</html>