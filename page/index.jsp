<%@ page import = "java.io.*,java.util.*" %>
    <% 
    
        if (session.getAttribute("user") == null) 
        { 
            // New location to be redirected
            String site = new String("../index.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
      %>
        <% } else {%>


            <!DOCTYPE html>
            <html>

            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link href="../css/add-prod-model.css" rel="stylesheet">
                <script src="../js/add-prod-model.js"></script>
                <title>Add-Product | Just Look</title>
                <%@ page import ="java.sql.*" %>
                    <%@ page import ="javax.sql.*" %>
            </head>

            <body class="bg">
                <%@ include file="header.jsp" %>
                    <br><br>

                    <div align="center" class="modal-content"><br><br>
                        <div class="modal-body">
                            <a class="psub" href="addbill.jsp">Add Bill</a><br><br><br><br>
                            <a class="psub" href=" addproduct.jsp ">Add Product</a><br><br><br><br>
                            <a class="psub" href=" addcategory.jsp ">Add category</a><br><br><br><br>

                            <a href="viewproduct.jsp " class="psub ">View Stock</a><br><br><br><br>
                            <a class="psub" href="viewbill.jsp">View Bill</a><br><br><br><br>
                            <a href="sales.jsp " class="psub ">View Sales</a><br><br><br><br>
                            <a href=" viewcategory.jsp " class="psub ">View category</a>
                        </div><br><br>
                    </div>






                    < </body>

            </html>


            <% } %>