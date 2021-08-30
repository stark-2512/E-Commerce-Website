package add_product;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.Part;
import com.oreilly.servlet.MultipartRequest;


public class add_product
{
    DataOutputStream dou;
    DataInputStream din;
    private Connection co;
    
    private String product_name,price,description,image;
    private Object getServletContext;
    
    /*public void copy_image(InputStream inputStream) throws FileNotFoundException, IOException
    {
        try
        {
          
            String path_to_save;
            path_to_save = getServletContext().getRealPath("images");
        
        }catch(SQLException e)
        {
            System.out.print("Uplaod  "+e);
        }
        /*FileInputStream fi=new FileInputStream("F:\\WEB-DEV\\SARJON\\"+name);
        FileOutputStream fo=new FileOutputStream("F:\\WEB-DEV\\SARJON\\images\\"+"my"+name);
        int i=0;
        while((i=fi.read())!=-1)
        {
            System.out.print(i);
            fo.write(i);
        }
        fo.close();
        fi.close();
    }
*/
    
    public void data_base()
    {
        try
        {
            PreparedStatement ps=this.co.prepareStatement("insert into products(product_name,price,description)  values(?,?,?)");
            ps.setString(1,product_name);
            ps.setInt(2,Integer.parseInt(price));
            ps.setString(3,description);
            ps.executeUpdate();
            ps.close();
            
            }catch(SQLException e)
        {
            System.out.print("Add Product : "+e);
        }
    }
    public void setconn(Connection co)
    {
        this.co=co;
    }
    public void setproduct_name(String product_name)
    {   
        this.product_name=product_name;
    }
    public void setprice(String price)
    {   
        this.price=price;
    }
    public void setdescription(String description)
    {   
        this.description=description;
    }
    public void setimage(String image)
    {   
        this.image=image;
    }
    
    public String getproduct_name()
    {   
        return product_name;
    }
    public String getprice()
    {   
        return price;
    }
    public String getdescription()
    {   
        return description;
    }
    public String getimage()
    {   
        return image;
    }
    
}