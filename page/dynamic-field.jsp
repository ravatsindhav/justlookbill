<html>


<head>
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
                container.appendChild(document.createTextNode("Member " + (i + 1)));
                // Create an <input> element, set its type and name attributes
                var input1 = document.createElement("input");
                input1.type = "text";
                input1.name = "member1" + i;
                input1.id = "id1";
                input1.value = "2";
                container.appendChild(input1);

                var input2 = document.createElement("input");
                input2.type = "number";
                input2.name = "member2" + i;
                input2.id = "id2";
                input2.value = "10";
                container.appendChild(input2);

                var button = document.createElement("input");
                button.type = "button";
                button.name = "btn";
                button.value = "Total";
                button.onclick = "total()";
                container.appendChild(button);

                var input = document.createElement("input");
                input.type = "number";
                input.id = "total";
                input.name = "member3" + i;


                container.appendChild(input);



                // Append a line break 
                container.appendChild(document.createElement("br"));
            }

            function total() {
                var value1 = document.getElementById("id1");
                var valueof1 = value1.value;
                var value2 = document.getElementById("id2");
                var valueof2 = value2.value;
                var totalamount = valueof1 * valueof2;
                var total = document.getElementById("total");
                total.value = valueof1 * valueof2;
            }
        }
    </script>
</head>

<body>
    <input type="Number" id="member" name="member" value="">Number of members: (max. 10)<br />
    <a href="#" id="filldetails" onclick="addFields()"> +</a>
    <div id="container" />
</body>

</html>