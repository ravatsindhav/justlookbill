<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>
        <%
try {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    Statement st= con.createStatement();  
            ResultSet rs=st.executeQuery("select * from user");  
            while(rs.next())  
            {
                out.println(rs.getString(1));
                %>

            <input type="text" value="<% out.println(rs.getString(2)); %>">
            <%
                out.println(rs.getString(2));
            }
            
            con.close();  
        } catch (Exception e) {
            out.println(e);
        }
    %>