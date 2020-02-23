<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>
        <%@ page import = "java.io.*,java.util.*" %>
            <%
        try {
                String uid=request.getParameter("user");
                String psw=request.getParameter("psw");

               
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                Statement st= con.createStatement();

                ResultSet rs=st.executeQuery("select * from admin where userid='"+uid+"' and password='"+psw+"'");
                     
                   if(rs.next())
                    {   
                        
                        String pass =rs.getString(3);
                        session.setAttribute("user",uid);
                        // New location to be redirected
                        String site = new String("page/index.jsp");
                        response.setStatus(response.SC_MOVED_TEMPORARILY);
                        response.setHeader("Location", site);
                    }
                    else
                    {
                        out.println("nooo"); 
                    }
                    con.close();  
            } 
            catch (Exception e) 
            {
                out.println(e);
            }
    %>