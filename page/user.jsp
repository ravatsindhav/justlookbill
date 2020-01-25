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
                    ResultSet rs=st.executeQuery(sql);
                     
                   while(rs.next())
                    {   
                        
                        /*out.println(rs.getString(3));*/
                       if(psw = rs.getString(3))
                        {
                            out.println("Success");
                        }
                        else
                        {
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