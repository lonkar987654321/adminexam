 <%@page import="java.sql.*,exam.*"%>
<link rel="stylesheet" href="css/style.css"> 
<%
    Connection con = DBUtil.getConnection();
    //PreparedStatement ps = con.prepareStatement("select b.ccode,b.bcode || ' : ' ||  to_char(stdate,'dd-mm-yy')  batch,rollno, to_char(dexam,'dd-mm-yy') dexam, marks from exams e, batches b where e.bcode = b.bcode  order by dexam desc");
    PreparedStatement ps = con.prepareStatement("select b.ccode, b.bcode, b.stdate, e.rollno, e.dexam, e.marks from exams e, batches b where e.bcode = b.bcode  order by dexam desc");
    ResultSet rs = ps.executeQuery();
 %>
 
 <center>
     <h2> Exams Details</h2>
 <table border=1 cellpadding=2>
 <tr>
 <th>Subject</th>
 <th>Batch
 <th>Rollno
 <th>Exam Date
 <th>Marks
 </tr>
 
<%
    while(rs.next())
    {
%>

<tr>
<td><%= rs.getString("ccode")%>
<td><%= rs.getString("bcode")%>
<td><%= rs.getString("rollno")%>
<td><%= rs.getString("dexam")%>
<td><%= rs.getString("marks")%>

</tr>

<%
   }
   rs.close();
   ps.close();
   con.close();
%>

</table>
<p>
<a href="javascript:history.back()">Back </a> 
</body>
