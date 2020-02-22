<%@ page import ="java.sql.*" %>
    <%@ page import ="javax.sql.*" %>

        <%
		

        	String name = request.getParameter("name");
			int number = name.length();
			try
				{
					Class.forName("com.mysql.jdbc.Driver");
					java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
						
					Statement st1= conn.createStatement();
						
						
						
				

					if(number > 1)
						{
								for(int i=0;i < number;i++)
								{
									int i=st1.executeUpdate("insert into user(psw) values('"+name[i]+"')");
								}
								conn.close();

						}
					else
						{
							out.println(fail);
						}
				}

%>