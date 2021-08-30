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
        String u_id="0";
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        int c=0;
        ps=co.prepareStatement("select * from users where username=? and password=?");
        ps.setString(1,username);
        ps.setString(2,password);
        rs=ps.executeQuery();
        while(rs.next())
        {
            u_id=rs.getString(1);
            c++;
        }

        if(c!=0)
        {
            HttpSession sc=request.getSession();
            sc.setAttribute("id_logged_in",u_id);
            sc.setAttribute("logged_in",username);
            sc.setAttribute("logged_in_pass",password);
            response.sendRedirect("home_page.jsp");

        }
        else
        {
            RequestDispatcher rd=request.getRequestDispatcher("login_customer.jsp");
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