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
    try
    {
        String s_id="0";
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        int c=0;
        ps=co.prepareStatement("select * from sellers where owner_name=? and password=?");
        ps.setString(1,username);
        ps.setString(2,password);
        rs=ps.executeQuery();
        while(rs.next())
        {
            s_id=rs.getString(1);
            c++;
        }
        
        if(c!=0)
        {
            HttpSession sc=request.getSession();
            sc.setAttribute("id_logged_in_s",s_id);
            sc.setAttribute("logged_in_s",username);
            sc.setAttribute("logged_in_pass_s",password);
            response.sendRedirect("add_product.jsp");

        }
        else
        {
            RequestDispatcher rd=request.getRequestDispatcher("login_seller.jsp");
            rd.include(request,response);%>
            <script type=text/javascript>alert('Username or Password does not Exist');</script>
<%
        }
        ps.close();
        rs.close();
    }catch(Exception e)
    {
        System.out.print("Login  :  "+ e);
    }
%>