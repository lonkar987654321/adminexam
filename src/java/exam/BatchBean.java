// Item Bean

package exam;

import  java.sql.*;
import  java.util.*;

import  exam.*;

public class BatchBean
{
    private  String bcode, ccode,stdate;

     public  void setBcode(String bcode)
    { this.bcode= bcode; }

    public String geBcode()
    {  return bcode; }
    
    public  void setCcode(String ccode)
    { this.ccode= ccode; }

    public String geCcode()
    {  return ccode; }


    public  void setStdate(String stdate)
	    { this.stdate= stdate; }

	    public String geStdate()
    {  return stdate; }


    public boolean add()
    {

     Connection con = null;
     PreparedStatement ps = null;
     try
     {
      con = DBUtil.getConnection();
      // get next batchcode
     // Statement st = con.createStatement();
     // ResultSet rs = st.executeQuery("select nvl(max(bcode),0) + 1 from batches");
     // ResultSet rs = st.executeQuery("select MAX(bcode) from batches");
      //rs.next();
     // int  bcode = rs.getInt(1);
     //    System.out.println(bcode);
     //    bcode=bcode+1;
    //  st.close();

      ps = con.prepareStatement("insert into batches  values (?,?,?)");
      ps.setString(1,bcode);
      ps.setString(2,ccode);
      ps.setString(3,stdate);
      ps.executeUpdate();
      return true;
      }
      catch(Exception ex)
      {
       System.out.println(ex.getMessage());
       return false;
      }
      finally
      {
        DBUtil.clean(con,ps);
      }

   } // end of add

} // end of bean








