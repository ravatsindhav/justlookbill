<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>

        <%

    String catname=request.getParameter("catname");
    String catdetail=request.getParameter("catdetail");
    try
        {
         
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                
            Statement st= con.createStatement();
                
                int i=st.executeUpdate("insert into category(category_name,category_detail) values('"+catname+"','"+catdetail+"')");
                con.close();
           %>
            <script>
                alert("Category Added Successfully")
            </script>
            <%@ include file="addcategory.jsp" %>
                <%     
            
        }
        catch (Exception e) 
        {
            out.println(e);
        }
    

%>
                    <div align="center" class="modal-content"><br><br>
                        <div class="modal-header">
                            <a class="psub" href="viewcategory.jsp">View Category </a>
                        </div><br><br>
                    </div>