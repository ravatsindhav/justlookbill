<% if (session.getAttribute("uid") == null) { %>

    <% } else {%>
        <jsp:forward page="..signin.jsp" />
        <% } %>