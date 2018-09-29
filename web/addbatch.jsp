<html>
<%@ taglib uri="/WEB-INF/tld/exam.tld" prefix="exam"%>
<link rel="stylesheet" href="datepicker.css">
<script type="text/javascript" src="datepicker.js"></script>
<link rel="stylesheet"  href="css/style.css">
<body>
<center>
<h2>Add New Batch</h2>

<form action="addbatch.jsp" method=post>

<table cellpadding=3>
    <tr>
<td>
Add Batch Code :
<td>
<input type=text name=bcode size=20>
</tr>
<tr>
<td>
Select Subject :
<td>
<exam:courses />
</tr>

<tr>
    <td>Staring Date :</td>
<td>
    <input id="start_dt"  class="datepicker" type="text" name="stdate" size=11> (dd-mon-yy)</td>
</tr>
</table>
<p>
<input type=submit value="Add Batch">
<input type=submit value="Clear All">
<p>
<a href="menu.html">Back To Menu </a>

<%
   if ( request.getParameter("ccode") == null)   return;
%>


<jsp:useBean id="batch" class="exam.BatchBean" scope="page" />
<jsp:setProperty name="batch" property="*"/>

<h4>
<%

  
  if ( batch.add() ) 
      out.println("Batch Has Been Added Successfully.");
  else
      out.println("An Error Occured While Adding Batch!");
 
%>
</h4>

</center>  
</body>
</html>
     
    
   
