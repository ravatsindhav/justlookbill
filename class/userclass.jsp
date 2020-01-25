<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>

        <%!
            public class userclass
            {
               
                public int  validateuser(String uname,String password)
                { 
                    String userid=request.getParameter("user");
                    String psw=request.getParameter("psw");
                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                    Statement st= con.createStatement();
                    ResultSet rs=st.executeQuery("select * from user where id='"+userid+"'");
                    
                    while(rs.next())
                    {   
                        
                       if(pwd.equals(rs.getString(3)))
                        {
                         return 1;
                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }

        %>