<%--sadd--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.annotation.MultipartConfig.*" %>
<%@page import="java.util.*" %>
<%@page import="org.springframework.web.multipart.MultipartHttpServletRequest"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
@MultipartConfig(maxFileSize = 163177215)
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
    InputStream inputStream;
    Part filePart;
    
    String product_name=request.getParameter("product_name");
    String price=request.getParameter("price");
    String description=request.getParameter("description");
    //String image=request.getParameter("images");
    /*filePart = request.getPart("image");
    inputStream = filePart.getInputStream();*/
    MultipartRequest mr=new MultipartRequest(request,"F://WEB-DEV//SARJON//images");
    MultipartHttpServletRequest msr=(MultipartHttpServletRequest) request;
    Iterator<String> itr = msr.getFileNames();
    while(itr.hasNext())
    {
        String uploadedFileName=(String)itr.next();
        System.out.print(uploadedFileName);
    }
%>
<bean id="multipartResolver"
    class="org.springframework.web.multipart.commons.CommonsMultipartResolver">

    <!-- one of the properties available; the maximum file size in bytes -->
    <property name="maxUploadSize" value="100000"/>
</bean>
 
    <jsp:useBean id="add_product" class="add_product.add_product"/>
    <jsp:setProperty name="add_product" property="product_name" value="<%=product_name%>"/>
    <jsp:setProperty name="add_product" property="price" value="<%=price%>"/>
    <jsp:setProperty name="add_product" property="description" value="<%=description%>"/>
    <%--<jsp:setProperty name="add_product" property="image" value="<%=inputStream%>"/>--%>
    <jsp:setProperty name="add_product" property="conn" value="<%=co%>"/>
    
        
<% 
    
//add_product.copy_image(inputStream);
%>



  