<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>

        <%

    String pid  =   request.getParameter("pid");
    String pcat =   request.getParameter("pcat");
    String ptitle   =   request.getParameter("ptitle");
    String pprice   =   request.getParameter("pprice");
    String pqty  =   request.getParameter("pqty");
    String pdetail =   request.getParameter("pdetail");
    try
        {
         
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                
            Statement st1= conn.createStatement();
                
                int i=st1.executeUpdate("insert into product(pid,category,ptitle,pprice,pqty,pdetail) values('"+pid+"','"+pcat+"','"+ptitle+"','"+pprice+"','"+pqty+"','"+pdetail+"')");
                conn.close();
           %>
            <script>
                alert("Product Added Successfully")
            </script>
            <%@ include file="addproduct.jsp" %>
                <%     
            
        }
        catch (Exception e) 
        {
            out.println(e);
        }
    

%>