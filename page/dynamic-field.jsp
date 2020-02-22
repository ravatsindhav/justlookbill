<html>


<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/add-prod-model.css" rel="stylesheet">
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
            </style>
            <script type='text/javascript'>
                function addFields() {
                    // Number of inputs to create
                    var number = document.getElementById("member").value;
                    // Container <div> where dynamic content will be placed
                    var container = document.getElementById("container");
                    // Clear previous contents of the container
                    while (container.hasChildNodes()) {
                        container.removeChild(container.lastChild);
                    }
                    for (i = 0; i < number; i++) {
                        // Append a node with a random text
                        //container.appendChild(document.createTextNode("Member " + (i + 1)));
                        // Create an <input> element, set its type and name attributes
                        var input1 = document.createElement("input");
                        input1.type = "text";
                        input1.name = "member1" + i;
                        input1.id = "id1";
                        input1.value = "2";
                        input1.class = "pinput";
                        container.appendChild(input1);



                        var input2 = document.createElement("input");
                        input2.type = "number";
                        input2.name = "member2" + i;
                        input2.id = "id2";
                        input2.value = "10";
                        container.appendChild(input2);



                        var input = document.createElement("input");
                        input.type = "number";
                        input.id = "total";
                        input.name = "member3" + i;


                        container.appendChild(input);



                        // Append a line break 
                        container.appendChild(document.createElement("br"));
                    }


                } <
                input type = "Number"
                id = "member"
                name = "member"
                value = ""
                class = "pinput" > < a href = "#"
                id = "filldetails"
                onclick = "addFields()" > add < /a><br / >

                    <
                    div id = "container" > < /div><br><br>
            </script>
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
                <form name="addproduct" action="dyn.jsp" method="POST">
                    <div class="modal-body">
                        <br>

                        <input type="text" name="cnm" class="pinput" placeholder="Enter Customer Name"> <br>
                        <input type="text" name="cmob" class="pinput" placeholder="Enter Customer Mobile"> <br><br>

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






                        <input type="date" name="cmob" class="pinput" placeholder="Enter Customer Mobile"> <br><br>


                        <input type="submit" name="save" value="Save" class="psub" require>

                    </div>
                </form>
                <div class="modal-footer">

                </div>
            </div>
</body>

</html>