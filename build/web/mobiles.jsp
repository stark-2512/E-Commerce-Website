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
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Mobiles">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>mobiles</title>
    <link rel="stylesheet" href="nicepage_ml.css" media="screen">
<link rel="stylesheet" href="mobiles.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery_ml.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage_ml.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.21.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "seller_add_item"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="mobiles">
    <meta property="og:type" content="website">
  </head>
  <section class="u-clearfix u-custom-color-1 u-section-1" id="sec-3346">
            <div class="u-clearfix u-sheet u-sheet-1">
             <h2 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-1">Mobiles</h2> 
              <div class="u-border-3 u-border-custom-color-2 u-line u-line-horizontal u-line-1"></div>
              
  <body class="u-body">
      <%
          String p_n="";
          String p="";
          String i="";
          ps=co.prepareStatement("select * from products where category=?");
          ps.setString(1,"Mobiles");
          rs=ps.executeQuery();
          while(rs.next())
          {
              p_n=rs.getString(2);
              p=rs.getString(3);
              i=rs.getString(6);
      %>
             <img class="u-image u-image-default u-image-1" src="images/<%=i%>" alt="" data-image-width="1280" data-image-height="960">
              <h3 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-2"><%=p_n%></h3>
              <h4 class="u-custom-font u-font-montserrat u-text u-text-3"><%=p%></h4>
              <a href="https://nicepage.com/k/shopping-cart-html-templates" class="u-active-none u-border-3 u-border-custom-color-2 u-border-hover-custom-color-3 u-btn u-btn-rectangle u-button-style u-custom-font u-font-montserrat u-hover-none u-none u-radius-0 u-text-custom-color-2 u-text-hover-custom-color-3 u-btn-1">See Product</a>
            
          <%}
        %>  
    </div>
          </section>

  </body>
</html>