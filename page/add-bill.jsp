<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>

        <%
        int billno =    Integer.parseInt(request.getParameter("billno"));
        String date =   request.getParameter("date");
        String cnm  =   request.getParameter("cnm");
        String cmob  =   request.getParameter("cmob");
        String pid =   request.getParameter("pid");
        String pprice =   request.getParameter("pprice");
        String pqty =   request.getParameter("pqty");
        String ptotal =   request.getParameter("ptotal");

        String total =   request.getParameter("total");
        

    
    try
        {
         
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                
            Statement st1= conn.createStatement();
                
                int i=st1.executeUpdate("insert into sales(billno,customername,mobileno,productid,pprice,pqty,total,date) values('"+billno+"','"+cnm+"','"+cmob+"','"+pid+"','"+pprice+"','"+pqty+"','"+ptotal+"','"+date+"')");
                conn.close();

                
           %>
            <script>
                alert("bill Added Successfully")
            </script>
            <%@ include file="addbill.jsp" %>
                <%     
            
        }
        catch (Exception e) 
        {
            out.println(e);
        }
    try {
        Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                    
                Statement st2= conn2.createStatement();
                    
                    int i=st2.executeUpdate("insert into bill(billno,customername,mobileno,total_amount,date ) values('"+billno+"','"+cnm+"','"+cmob+"','"+total+"','"+date+"')");
                    conn2.close();
        
    }  catch (Exception e) 
        {
            out.println(e);
        }

%>