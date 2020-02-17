<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>View-Product | Just Look</title>
</head>
<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>

        <body>
            <%@ include file="header.jsp" %>
                <br><br>



                <div class="container">
                    <div class="table-responsive">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th> id</th>
                                    <th>Product id</th>
                                    <th>Product Category</th>
                                    <th>Product Title </th>
                                    <th>Product Price </th>
                                    <th>Product Quantity </th>
                                    <th>Product Detail </th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                        Statement st= con.createStatement();  
                        ResultSet rs=st.executeQuery("select * from product"); 
                        while(rs.next())  
                        { %>

                                <tbody>
                                    <tr>
                                        <td>
                                            <% out.println(rs.getString(1)); %>
                                        </td>

                                        <td>
                                            <% out.println(rs.getString(2)); %>
                                        </td>

                                        <td>
                                            <% out.println(rs.getString(3)); %>
                                        </td>
                                        <td>
                                            <% out.println(rs.getString(4)); %>
                                        </td>

                                        <td>
                                            <% out.println(rs.getString(5)); %>
                                        </td>

                                        <td>
                                            <% out.println(rs.getString(6)); %>
                                        </td>
                                        <td>
                                            <% out.println(rs.getString(7)); %>
                                        </td>

                                        <td>
                                            <a href="deletecontact.php?cid=<?php echo $r['id'];?>" class="btn btn-outline-danger">Delete</a>
                                        </td>
                                    </tr>


                                    <% } %>
                                </tbody>
                        </table>
                    </div>
                </div>
                <%   
                
                con.close();  
            } catch (Exception e) {
                out.println(e);
            }
            %>
        </body>

</html>