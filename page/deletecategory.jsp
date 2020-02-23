<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>

        <%

    String id  =   request.getParameter("pid");
    
    try
        {
         
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                
            Statement st1= conn.createStatement();
           
                
                int i=st1.executeUpdate("DELETE FROM category WHERE id="+id);
                conn.close();
           %>
            <script>
                alert("Product Deleted Successfully")
            </script>
            <jsp:forward page="viewcategory.jsp" />
            <%     
            
        }
        catch (Exception e) 
        {
            out.println(e);
        }
    

%>