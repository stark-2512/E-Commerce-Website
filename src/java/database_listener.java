import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.*;


public class database_listener implements ServletContextListener
{
    Connection co;
    
    public void contextInitialized(ServletContextEvent e)
    {
        
        try
        {
            ServletContext sc=e.getServletContext();
            Class.forName("com.mysql.jdbc.Driver");
            co=DriverManager.getConnection("jdbc:mysql://localhost:3306/sarjon","root",null);
            sc.setAttribute("database",co);
        }catch(Exception a)
        {
            System.out.print("1"+e);
        }
    }
    public void contextDestroyed(ServletContextEvent e)
    {
        try
        {
            co.close();
        }catch(Exception a)
        {
            
        }
    }
}