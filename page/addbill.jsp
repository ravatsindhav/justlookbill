<html>


<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/add-bill-model.css" rel="stylesheet">
    <title>Add-Bill | Just Look</title>
    <%@ page import ="java.sql.*" %>
        <%@ page import ="javax.sql.*" %>
            <style>
                input {
                    color: black;
                    width: 200px;
                    padding: 12px 20px;
                    padding-top: 20px;
                    margin: 8px 0;
                    display: inline-block;
                    font-size: 1.2em;
                    border-bottom: solid;
                    box-sizing: border-box;
                    border-color: black;
                    /* border: none;*/
                    background-color: whitesmoke;
                }
                
                .totalamt {
                    font-size: 1.5em;
                }
            </style>
            <script src="angular.min.js"></script>
</head>

<body>

    <%@ include file="header.jsp" %> <br><br>


        <!-- The Modal 
<div id="myModal" class="modal">
-->
        <div id="myModal">
            <!-- Modal content -->
            <div align="center" class="modal-content">
                <div class="modal-header">
                    <h2>Add New Bill</h2>
                </div>
                <form name="addproduct" action="add-bill.jsp" method="POST">
                    <div class="modal-body">
                        <br>


                        <input type="text" name="billno" class="pinput" placeholder="Enter Bill No"> &nbsp;&nbsp;&nbsp;
                        <input type="date" name="date" class="pinput"> <br>

                        <input type="text" name="cnm" class="pinput" placeholder="Enter Customer Name"> &nbsp;&nbsp;&nbsp;
                        <input type="text" name="cmob" class="pinput" placeholder="Enter Customer Mobile"> <br><br>
                        <b style="font-size:1.9em;">Add Item<a href="#" style="text-decoration: none;font-size:2.0em;">+</a></b>
                        <h3>Product 1</h3>

                        <div data-ng-app="" data-ng-init="quantity=1;price=5;total={{quantity * price}};totalamt=total;">

                            <select name="pid" class="prodselect" required>
                                    <option value="" class="prodoption" >Product Id</option>
                                <%
                                    try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    java.sql.Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                                    Statement st= con1.createStatement();  
                                            ResultSet rs=st.executeQuery("select * from product");  
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
                            </select>&nbsp;&nbsp;



                            <input type="number" name="pprice" placeholder="Price" ng-model="price">&nbsp;&nbsp;
                            <input type="number" name="pqty" placeholder="Quantity" ng-model="quantity">&nbsp;&nbsp;
                            <input type="number" name="ptotal" placeholder="Total" ng-model="total"><b style="color:white;">{{ total= quantity * price }}
                                    </b>
                            <br>



                            <h3>Product 2</h3>

                            <div data-ng-app="" data-ng-init="p2quantity=1;p2price=5;p2total={{p2quantity * p2price}};totalamt=total;">

                                <select name="p2id" class="prodselect" required>
                                                <option value="" class="prodoption" >Product Id</option>
                                            <%
                                                try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                java.sql.Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                                                Statement st= con1.createStatement();  
                                                        ResultSet rs=st.executeQuery("select * from product");  
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
                                     </select>&nbsp;&nbsp;



                                <input type="number" name="p2price" placeholder="Price" ng-model="p2price">&nbsp;&nbsp;
                                <input type="number" name="p2qty" placeholder="Quantity" ng-model="p2quantity">&nbsp;&nbsp;
                                <input type="number" name="p2total" placeholder="Total" ng-model="p2total"><b style="color:white;">{{ p2total= p2quantity * p2price }}
                                                            </b><br>


                                <b class="totalamt">Total Amount</b> &nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="total" placeholder="Total Amount" ng-model="totalamt"><b style="color:white;">{{ totalamt= total + p2total }}
                                </b>
                            </div>
                        </div>
                        <br><br>


                        <input type="submit" name="save" value="Save" class="psub" require>

                    </div>
                </form>
                <div class="modal-footer">

                </div>
            </div>

            <div align="center" class="modal-content"><br><br>
                <div class="modal-header">
                    <a class="psub" href="viewbill.jsp">View All Bills </a>
                </div><br><br>
            </div>
</body>

</html>