
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid=request.getParameter("user");
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from user where id='"+userid+"'");
while(rs.next())
{   
    
   if(uidsequals(userid))
    {
     out.println("welcome"+userid);
    }
    else
    {
        out.println("Invalid password try again");
    }
}

%>
