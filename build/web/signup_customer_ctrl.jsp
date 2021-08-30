<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*" %>
<%@page import="customer.signup_customer" %>
<%!
    Connection co;
    public void jspInit()
    {
        try
        {
            ServletContext sc=getServletContext();
            co=(Connection)sc.getAttribute("database");
        }catch(Exception e)
        {
            System.out.print("driver "+e);
        }
        
    }
%>
<%
    PrintWriter pw=response.getWriter();
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    String phone=request.getParameter("phone");
 %>
    
    <jsp:useBean id="customer" class="customer.signup_customer"/>
    <jsp:setProperty name="customer" property="name" value="<%=name%>"/>
    <jsp:setProperty name="customer" property="email" value="<%=email%>"/>
    <jsp:setProperty name="customer" property="pass" value="<%=pass%>"/>
    <jsp:setProperty name="customer" property="phone" value="<%=phone%>"/>
    <jsp:setProperty name="customer" property="conn" value="<%=co%>"/>
    <jsp:setProperty name="customer" property="printWriter" value="<%=pw%>"/>

<%
    
        customer.check_same(name);
%>
<jsp:include page="login_customer.jsp"/>

  