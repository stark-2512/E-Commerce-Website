<%@page import="java.sql.*" %>
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
    String shop_name=request.getParameter("shop_name");
    String item=request.getParameter("item");
    String owner_name=request.getParameter("owner_name");
    String password=request.getParameter("pass");
    String owner_phone=request.getParameter("owner_phone");
    String owner_mail=request.getParameter("owner_mail");
    String shop_add=request.getParameter("shop_add"); 
    %>
    
    <jsp:useBean id="seller" class="seller.seller_reg"/>
    <jsp:setProperty name="seller" property="shop_name" value="<%=shop_name%>"/>
    <jsp:setProperty name="seller" property="item" value="<%=item%>"/>
    <jsp:setProperty name="seller" property="owner_name" value="<%=owner_name%>"/>
    <jsp:setProperty name="seller" property="password" value="<%=password%>"/>   
    <jsp:setProperty name="seller" property="owner_phone" value="<%=owner_phone%>"/>
    <jsp:setProperty name="seller" property="owner_mail" value="<%=owner_mail%>"/>
    <jsp:setProperty name="seller" property="shop_add" value="<%=shop_add%>"/>
    <jsp:setProperty name="seller" property="conn" value="<%=co%>"/>
<% 
    seller.data_base();
%>
<jsp:forward page="seller_reg_verify.jsp"/>

  