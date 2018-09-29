/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package exam;

/**
 *
 * @author Administrator
 */
 import java.io.*;

    import org.apache.poi.hssf.usermodel.HSSFWorkbook;
    import org.apache.poi.hssf.usermodel.HSSFSheet;
    import org.apache.poi.ss.usermodel.*;
    import org.apache.poi.xssf.usermodel.XSSFSheet;
    import org.apache.poi.xssf.usermodel.XSSFWorkbook;

    import java.util.*;
    import java.sql.*; 

    public class XLToDB {  

        //public static final String INSERT_RECORDS = "INSERT INTO RECORDS(ID, NAME, VALUE1, VALUE2, VALUE3, VALUE4, VALUE5) VALUES(?,?,?,?,?,?,?)";
        public static final String INSERT_RECORDS = "INSERT INTO QUESTIONS(qid, ccode, question, ans1, ans2, ans3, ans4, cans) VALUES(?,?,?,?,?,?,?,?)";
        private static String GET_COUNT = "SELECT COUNT(*) FROM QUESTIONS";

        public static void main(String[] args) throws Exception{
           // XLToDB obj = new XLToDB();
           // obj.insertRecords("D:/java/java_demo.xlsx");



        }
              public void insertRecords(String filePath){

                /* Create Connection objects */
            Connection con = null;
            PreparedStatement prepStmt = null;
            java.sql.Statement stmt = null;
            int count = 0;
            ArrayList<String> mylist = new ArrayList<String>();

            try{
                con = DBUtil.getConnection();
                System.out.println("Connection :: ["+con+"]");
                prepStmt = con.prepareStatement(INSERT_RECORDS);
                stmt = con.createStatement();
                ResultSet result = stmt.executeQuery(GET_COUNT);
                while(result.next()) {

                    int val = result.getInt(1);
                    System.out.println(val);
                    count = val+1;

                }


                //prepStmt.setInt(1,count);

                /* We should now load excel objects and loop through the worksheet data */
                FileInputStream fis = new FileInputStream(new File(filePath));
                System.out.println("FileInputStream Object created..! ");
                 /* Load workbook */
                XSSFWorkbook workbook = new XSSFWorkbook (fis);
                System.out.println("XSSFWorkbook Object created..! ");
                /* Load worksheet */
                XSSFSheet sheet = workbook.getSheetAt(0);
                System.out.println("XSSFSheet Object created..! ");
                   // we loop through and insert data
                Iterator ite = sheet.rowIterator();
                System.out.println("Row Iterator invoked..! ");

                   while(ite.hasNext()) {
                            Row row = (Row) ite.next(); 
                            System.out.println("Row value fetched..! ");
                            Iterator<Cell> cellIterator = row.cellIterator();
                            System.out.println("Cell Iterator invoked..! ");
                            int index=1;
                                    while(cellIterator.hasNext()) {

                                            Cell cell = cellIterator.next();
                                            System.out.println("getting cell value..! ");

                                            switch(cell.getCellType()) { 
                                                case Cell.CELL_TYPE_NUMERIC: //handle double data
                                                int i = (int)cell.getNumericCellValue();
                                                prepStmt.setInt(index, (int) cell.getNumericCellValue());
                                                    break;
                                            case Cell.CELL_TYPE_STRING: //handle string columns
                                                    prepStmt.setString(index, cell.getStringCellValue());                                                                                     
                                                    break;
                                            
                                            }
                                            index++;



                                    }
                    //we can execute the statement before reading the next row
                    prepStmt.executeUpdate();
                    }
                   /* Close input stream */
                   fis.close();
                   /* Close prepared statement */
                   prepStmt.close();

                   /* Close connection */
                   con.close();

            }catch(Exception e){
                e.printStackTrace();            
            }

            }
    }

