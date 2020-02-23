<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>View-Product | Just Look</title>
    <style>
        * {
            box-sizing: border-box;
        }
        /* Style the search field */
        
        form.example input[type=text] {
            padding: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            width: 80%;
            background: #f1f1f1;
        }
        /* Style the submit button */
        
        form.example button {
            float: left;
            width: 20%;
            padding: 10px;
            background: #2196F3;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none;
            /* Prevent double borders */
            cursor: pointer;
        }
        
        form.example button:hover {
            background: #0b7dda;
        }
        /* Clear floats */
        
        form.example::after {
            content: "";
            clear: both;
            display: table;
        }
    </style>
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
                                    <th>All Bills</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th class="col-2">
                                        <form class="example" action="searchsales.jsp" method="POST">
                                            <input type="text" placeholder="Enter Bill No" name="billno">
                                            <button type="submit"><i class="fa fa-search"></i></button>
                                        </form>
                                    </th>


                                </tr>
                                <tr>
                                    <th> id</th>
                                    <th>Bill No</th>
                                    <th>Customer Name</th>

                                    <th>Mobile No </th>
                                    <th>Product id</th>
                                    <th>Price </th>

                                    <th>Quantity </th>
                                    <th>Total Amount </th>
                                    <th>Date </th>

                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                        Statement st= con.createStatement();  
                        ResultSet rs=st.executeQuery("select * from sales"); 
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
                                            <% out.println(rs.getString(8)); %>
                                        </td>
                                        <td>
                                            <% out.println(rs.getString(9)); %>
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