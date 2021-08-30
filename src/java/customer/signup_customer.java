package customer;

import java.io.*;
import java.sql.*;

public class signup_customer 
{
    
    private Connection co;
    private PrintWriter pw;
    private String name,email,pass,phone;
    int c=0;
    
    public void data_base()
    {
        try
        {
            PreparedStatement ps=this.co.prepareStatement("insert into users(username,email,password,phone)  values(?,?,?,?)");
            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,pass);
            ps.setString(4,phone);
          
            ps.executeUpdate();
            ps.close();
            
            }catch(SQLException e)
        {
            System.out.print("Seller : "+e);
        }
    }
    public void check_same(String name)
    {
        try
        {
            
            PreparedStatement ps=this.co.prepareStatement("select * from users where username=?");
            ps.setString(1,name);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                c++;
            }
            ps.close();
            rs.close();
            if(c!=0)
            {
                pw.println("<script type=text/javascript>alert('Username or Password does not Exist')</script>");
            }
            else
            {
                data_base();
            }
        }catch(SQLException e)
        {
            System.out.print("Customer : "+e);   
        }
    }
    public void setprintWriter(PrintWriter pw)
    {
        this.pw=pw;
    }
    public void setconn(Connection co)
    {
        this.co=co;
    }
    public void setname(String name)
    {   
        this.name=name;
    }
    public void setemail(String email)
    {   
        this.email=email;
    }
 
    public void setpass(String pass)
    {   
        this.pass=pass;
    }
    public void setphone(String phone)
    {   
        this.phone=phone;
    }
   
    public String getname()
    {   
        return name;
    }
    public String getemail()
    {   
        return email;
    }
   
    public String getpass()
    {   
        return pass;
    }
    public String getphone()
    {   
        return phone;
    }
    
    
}