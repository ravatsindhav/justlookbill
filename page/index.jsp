<%@ page import = "java.io.*,java.util.*" %>
    <% 
    
        if (session.getAttribute("user") == null) 
        { 
            // New location to be redirected
            String site = new String("../index.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
      %>
        <% } else {%>
            <%@ include file="header.jsp" %>


                <% } %>