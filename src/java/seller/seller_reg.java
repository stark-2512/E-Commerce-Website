package seller;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class seller_reg 
{
    
    private Connection co;
    
    private String shop_name,item,owner_name,password,owner_phone,owner_mail,shop_add;
    
    
    public void data_base()
    {
        try
        {
            PreparedStatement ps=this.co.prepareStatement("insert into sellers(shop_name,items_sell,owner_name,password,owner_phone,owner_mail,shop_add)  values(?,?,?,?,?,?,?)");
            ps.setString(1,shop_name);
            ps.setString(2,item);
            ps.setString(3,owner_name);
            ps.setString(5,owner_phone);
            ps.setString(4,password);
            ps.setString(6,owner_mail);
            ps.setString(7,shop_add);
            ps.executeUpdate();
            ps.close();
            
            }catch(SQLException e)
        {
            System.out.print("Seller : "+e);
        }
    }
    public void setconn(Connection co)
    {
        this.co=co;
    }
    public void setshop_name(String shop_name)
    {   
        this.shop_name=shop_name;
    }
    public void setitem(String item)
    {   
        this.item=item;
    }
    public void setshop_add(String shop_add)
    {   
        this.shop_add=shop_add;
    }
    public void setowner_name(String owner_name)
    {   
        this.owner_name=owner_name;
    }
    public void setpassword(String password)
    {   
        this.password=password;
    }
    public void setowner_phone(String owner_phone)
    {   
        this.owner_phone=owner_phone;
    }
    public void setowner_mail(String owner_mail)
    {   
        this.owner_mail=owner_mail;
    }
    public String getshop_name()
    {   
        return shop_name;
    }
    public String getitem()
    {   
        return item;
    }
    public String getshop_add()
    {   
        return shop_add;
    }
    public String getowner_name()
    {   
        return owner_name;
    }
    public String getowner_phone()
    {   
        return owner_phone;
    }
    public String getowner_mail()
    {   
        return owner_mail;
    }
    
}