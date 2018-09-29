<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/style.css"> 
<!DOCTYPE html>
<html>
<head>
<title>Upload Student Data </title>
</head>
<body>
<center>
<h2>Select Excel file to upload Students</h2> 
<form action="UploadStudent" method="post" enctype="multipart/form-data">
    <table border=1 >
        <tr> <td >Select File : <input type="file" name="filetoupload"> </td></tr>
        <tr> <td > <input type="submit" value="Upload File"> </td></tr>
    </table>
    <a href="menu.html">Main Menu</a><br/><br/>
    <p style="color: firebrick"><strong>Note: </strong>Refer below eg. of XLSX file format to Upload Student, Insert Only Values Batch code, roll number, name</p> <br/>
    <img src="images/students.jpg"\>
</form>
</center>
 </body>
</html>