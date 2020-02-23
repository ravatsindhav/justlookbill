<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>
        <%
        try {
                String userid=request.getParameter("user");
                String psw=request.getParameter("psw");

                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                    Statement st= con.createStatement();
                    String sql="select * from admin where unm='"+userid+"'";
                    Resultset rs=st.executeUpdate(sql);
                     
                   while(rs.next())
                    {   
                        
                        /*out.println(rs.getString(3));*/
                       if(psw.equals(rs.getString(3)))
                        {
                            session.setAttribute("uid",userid);
                            %>

            <jsp:forward page="page/home.jsp" />
            <%
                        }
                        else
                        {%>
                <script>
                    alert("Wrong userid Or Password")
                </script>
                <%
                            out.println("Fail");
                        }
                    }
                    con.close();  
            } 
            catch (Exception e) 
            {
                out.println(e);
            }
    %>