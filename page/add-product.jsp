<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/add-prod-model.css" rel="stylesheet">
    <script src="../js/add-prod-model.js"></script>
    <title>Add-Product | Just Look</title>
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
                <form name="addproduct" action="" method="POST">
                    <div class="modal-body">
                        <br>
                        <input type="text" name="pid" value="" placeholder="Enter Product ID" class="pinput" required/> <br>

                        <input type="text" name="ptitle" value="" placeholder="Enter Product Title" class="pinput" required/> <br><br>


                        <select name="ptype" required class="prodselect">
                        <option value="" class="prodoption">Please Select Product Category</option>
                        <option value="Shirt" class="prodoption">Shirt</option>
                        <option value="Formal Shirt" class="prodoption">Formal Shirt</option>
                        <option value="T Shirt" class="prodoption">T-Shirt</option>
                        <option value="Jeans Pant" class="prodoption">Jeans Pant</option>
                        <option value="Cotton Pant" class="prodoption">Cotton Pant</option>
                        <option value="Formal Pant" class="prodoption">Formal Pant</option>
            
                     </select>
                        <br> <br>


                        <input type="text" name="pprice" value="" placeholder="Enter Product Price" class="pinput" onkeyup="priceverify()" id="price" required/>
                        <!-- onkeyup="priceverify()" id="price" -->
                        <b id="msg" style="color:red;"></b>
                        <br>

                        <input type="text" name="psize" value="" placeholder="Enter Product Size" class="pinput" required/> <br>

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