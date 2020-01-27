<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/add-prod-model.css" rel="stylesheet">
    <script src="../js/add-prod-model.js"></script>
    <title>Add-Category | Just Look</title>
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
                <form action="addcategory.jsp" method="POST">
                    <div class="modal-body">
                        <br>


                        <input type="text" name="catname" value="" placeholder="Enter Category Name" class="pinput" required/> <br>

                        <input type="text" name="catdetail" value="" placeholder="Enter Category Detail" class="pinput" required/> <br>

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





</body>

</html>