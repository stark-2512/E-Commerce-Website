<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%!

    Connection co;
    PreparedStatement ps;
    ResultSet rs;
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
    String p_id=request.getParameter("id");
    HttpSession sc=request.getSession();
    String u_id=(String)sc.getAttribute("id_logged_in");
    ps=co.prepareStatement("insert into cart(u_id,p_id) values(?,?)");
    ps.setInt(1,Integer.parseInt(u_id));
    ps.setInt(2,Integer.parseInt(p_id));
    ps.executeUpdate();
    ps.close();
   
    %>
    
    <jsp:forward page="cart.jsp"/>