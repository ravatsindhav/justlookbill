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

        <!-- The Modal 
<div id="myModal" class="modal">
-->
        <div id="myModal">
            <!-- Modal content -->
            <div align="center" class="modal-content">
                <div class="modal-header">
                    <h2>Add New Product</h2>
                </div>
                <form name="addproduct" action="add-product.jsp" method="POST">
                    <div class="modal-body">
                        <br>
                        <input type="text" name="pid" value="" placeholder="Enter Product ID" class="pinput" required/> <br><br>



                        <select name="pcat" class="prodselect" required>
                            <option value="" class="prodoption" >Please Select Product Category</option>
                        <%
                            try {
                            Class.forName("com.mysql.jdbc.Driver");
                            java.sql.Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                            Statement st= con1.createStatement();  
                                    ResultSet rs=st.executeQuery("select * from category");  
                                    while(rs.next())  
                                    {
                                        String val =rs.getString(2);
                                        %>

                                            
                                <option value="<%= val %>" class="prodoption"><% out.println(rs.getString(2)); %></option>
                                <%
                                        
                                    }
                                    
                                    con1.close();  
                                } catch (Exception e) {
                                    out.println(e);
                                }
                        %>

                               
                        
                      
            
                     </select>
                        <br> <br>

                        <input type="text" name="ptitle" value="" placeholder="Enter Product Title" class="pinput" required/> <br><br>

                        <input type="text" name="pprice" value="" placeholder="Enter Product Price" class="pinput" onkeyup="priceverify()" id="price" required/>
                        <!-- onkeyup="priceverify()" id="price" -->
                        <b id="msg" style="color:red;"></b>
                        <br>

                        <input type="text" name="pqty" value="" placeholder="Enter Product Quantity" class="pinput" required/> <br>

                        <input type="text" name="pdetail" value="" placeholder="Enter Product Detail" class="pinput" required/> <br>

                        <input type="submit" name="save" value="Save" class="psub" require>

                    </div>
                </form>
                <div class="modal-footer">

                </div>
            </div>
            <br>
            <br>
            <br>
            <br>
        </div>

        <div align="center" class="modal-content"><br><br>
            <div class="modal-header">
                <a class="psub" href="viewproduct.jsp">View Product </a>
            </div><br><br>
        </div>

        <!-- price verify -->
        <script>
            function priceverify() {
                var x = document.getElementById("price");
                var msg = document.getElementById("msg");
                var value = x.value; /*x.value.toUpperCase(); */
                /*var decimal= /^[-+][0-9]+\.[0-9]+[eE][-+]?[0-9]+$/; */
                var decimal = /^[0-9]+\.[0-9]+$/;
                if (value.match(decimal)) {
                    document.getElementById("msg").innerHTML = " ";
                    return true;
                } else {
                    document.getElementById("msg").innerHTML = "*";
                    return false;
                }
            }
        </script>

</body>

</html>