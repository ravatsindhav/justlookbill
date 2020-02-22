<%
    int len = Integer.parseInt(request.getParameter("member"));
    
    for (int i=0;i < len;i++)
    {
        String member1[i]= request.getParameter("member1"+i+"");
    }
    out.println(number1[2])
%>