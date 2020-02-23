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

        String p2id =   request.getParameter("p2id");
        String p2price =   request.getParameter("p2price");
        String p2qty =   request.getParameter("p2qty");
        String p2total =   request.getParameter("p2total");

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

        try{
         
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                
            Statement st1= conn.createStatement();
                
                int i=st1.executeUpdate("insert into sales(billno,customername,mobileno,productid,pprice,pqty,total,date) values('"+billno+"','"+cnm+"','"+cmob+"','"+p2id+"','"+p2price+"','"+p2qty+"','"+p2total+"','"+date+"')");
                conn.close();            
        }
        catch (Exception e) {out.println(e);}

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