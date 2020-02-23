<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="../img/logo.jpeg" />
    <link href="../css/header-menu.css" rel="stylesheet">
    <style>
        a {
            text-decoration: none;
        }
    </style>

</head>

<body style="margin:0;">
    <div class="menu-bar">
        &nbsp;&nbsp;&nbsp;
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span> &nbsp;&nbsp;
        <span class="brand-name">Just Look Menswear</span>
        <span class="menu-user-ac"> <img src="../icon/user.svg" class="icone" width="25px" height="25px"></span>
    </div>
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <br><br>
        <a href="index.jsp" class="menu">Home</a>
        <a href="addbill.jsp" class="menu">Add Bill</a>
        <a href="addproduct.jsp" class="menu">Add Product</a>
        <a href="addcategory.jsp" class="menu">Add category</a>
        <a href="viewstock.jsp" class="menu">View Stock</a>
        <a href="viewbill.jsp" class="menu">View Bill</a>
        <a href="sales.jsp" class="menu">View Sales</a>
        <a href="viewcategory.jsp" class="menu">View category</a>


        <a href="logout.jsp" class="menu">Logout</a>
    </div>



    <script>
        // Add active class to the current button (highlight it)
        var header = document.getElementById("mySidenav");
        var btns = header.getElementsByClassName("menu");
        for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener("click", function() {
                var current = document.getElementsByClassName("active");
                current[0].className = current[0].className.replace(" active", "");
                this.className += " active";
            });
        }
    </script>
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
        }
    </script>

</body>

</html>