%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

    <%
    try
        {
            String catname=request.getParameter("catname");
            String catdetail=request.getParameter("catdetail");

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justlook","root","");
                
            Statement st= con.createStatement(); 
               
                int i=st.executeUpdate("insert into category values('"+catname+",'"+catdetail+"'')");
                out.println(i);
                con.close();

        }
        catch (Exception e) 
        {
            out.println(e);
        }
    

%>