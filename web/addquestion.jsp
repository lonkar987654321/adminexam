<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/style.css"> 
<!DOCTYPE html>
<html>
<head>
<title>Upload File</title>
</head>
<body>
<center>
<h2>Select Excel file to upload questions</h2> 
<form action="UploadFile" method="post" enctype="multipart/form-data">
    <table border=1>
        <tr> <td>Select File : <input type="file" name="filetoupload"> </td></tr>
        <tr><p> <td><input type="submit" value="Upload File"> </td></tr>
    </table>
    <a href="menu.html">Main Menu</a><br/><br/>
    <p style="color: firebrick"><strong>Note: </strong> Refer below eg. of XLSX file format to Upload Questions, Insert Only Values Of ID,Subject Code,Questions, Option1, Option2, Option3, Option4,correct Answer.</p> <br/>
    <img src="images/questions.jpg"\>
</form>
</center>
 </body>
</html>