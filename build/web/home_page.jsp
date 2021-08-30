<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
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
    <meta name="keywords" content="Latest Mobiles, Latest Laptops">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>SARJON</title>
    <link rel="stylesheet" href="nicepage_h.css" media="screen">
<link rel="stylesheet" href="Home_h.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery_h.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage_h.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.21.3, nicepage.com">
    
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "seller_add_item"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-clearfix u-custom-color-2 u-header u-sticky u-sticky-048c u-header" id="sec-de96"><div class="u-clearfix u-sheet u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1" data-responsive-from="XL" data-position="">
          <div class="menu-collapse u-custom-font u-font-montserrat" style="font-size: 1rem; letter-spacing: 0px; text-transform: uppercase; font-weight: 700;">
            <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-border-radius u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-custom-color-1 u-text-hover-palette-2-base" href="#" style="font-size: calc(1em + 10px);">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-custom-font u-font-montserrat u-nav u-spacing-20 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" style="padding: 10px 20px;">Your Orders</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" style="padding: 10px 20px;">Seller Section</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" style="padding: 10px 20px;">Settings</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" href="About.html" style="padding: 10px 20px;">About</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" href="Contact.html" style="padding: 10px 20px;">Contact</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-container-style u-custom-color-1 u-inner-container-layout u-sidenav u-sidenav-1" data-offcanvas-width="290">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close u-menu-close-1"></div>
                <ul class="u-align-center u-custom-font u-font-montserrat u-nav u-popupmenu-items u-spacing-14 u-text-active-custom-color-3 u-text-custom-color-2 u-text-hover-custom-color-3 u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;" href="home_page.jsp">Home</a>
                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;" href="orders.jsp" >Your Orders</a>
                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;" href="login_seller.jsp" >Seller Section</a>
                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;" href="settings.jsp" >Settings</a>
                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;" href="about.jsp" >About</a>
                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;" href="contact.jsp" >Contact</a>
</li></ul>
              </div>
            </div>
            <div class="u-custom-color-2 u-menu-overlay u-opacity u-opacity-75"></div>
          </div>
        </nav><span class="u-border-2 u-border-custom-color-1 u-icon u-icon-circle u-spacing-12 u-text-custom-color-1 u-icon-1" data-href="cart.jsp" data-animation-name="rotateIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 208.955 208.955" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8f6d"></use></svg><svg class="u-svg-content" viewBox="0 0 208.955 208.955" x="0px" y="0px" id="svg-8f6d" style="enable-background:new 0 0 208.955 208.955;"><path d="M190.85,200.227L178.135,58.626c-0.347-3.867-3.588-6.829-7.47-6.829h-26.221V39.971c0-22.04-17.93-39.971-39.969-39.971  C82.437,0,64.509,17.931,64.509,39.971v11.826H38.27c-3.882,0-7.123,2.962-7.47,6.829L18.035,200.784  c-0.188,2.098,0.514,4.177,1.935,5.731s3.43,2.439,5.535,2.439h157.926c0.006,0,0.014,0,0.02,0c4.143,0,7.5-3.358,7.5-7.5  C190.95,201.037,190.916,200.626,190.85,200.227z M79.509,39.971c0-13.769,11.2-24.971,24.967-24.971  c13.768,0,24.969,11.202,24.969,24.971v11.826H79.509V39.971z M33.709,193.955L45.127,66.797h19.382v13.412  c0,4.142,3.357,7.5,7.5,7.5c4.143,0,7.5-3.358,7.5-7.5V66.797h49.936v13.412c0,4.142,3.357,7.5,7.5,7.5c4.143,0,7.5-3.358,7.5-7.5  V66.797h19.364l11.418,127.158H33.709z"></path></svg></span>
        <form action="#" method="get" class="u-border-1 u-border-grey-30 u-radius-50 u-search u-search-right u-white u-search-1">
          <button class="u-search-button" type="submit">
            <span class="u-search-icon u-spacing-10">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7a96"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-7a96" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
            </span>
          </button>
          <input class="u-search-input u-text-custom-color-2" type="search" name="search" value="" placeholder="Search">
        </form>
      </div></header>
    <section class="u-carousel u-slide u-block-b220-1" id="carousel_fb25" data-interval="5000" data-u-ride="carousel">
      <ol class="u-absolute-hcenter u-carousel-indicators u-block-b220-2">
        <li data-u-target="#carousel_fb25" data-u-slide-to="0" class="u-active u-grey-30"></li>
        <li data-u-target="#carousel_fb25" class="u-grey-30" data-u-slide-to="1"></li>
      </ol>
      <div class="u-carousel-inner" role="listbox">
        <div class="u-active u-align-center u-carousel-item u-clearfix u-image u-shading u-section-1-1" src="add_product.jsp" data-image-width="1280" data-image-height="960" data-href="mobiles">
          <div class="u-clearfix u-sheet u-sheet-1">
            <h1 class="u-custom-font u-font-montserrat u-text u-text-custom-color-1 u-title u-text-1">Latest Mobiles</h1>
            <h3 class="u-custom-font u-font-montserrat u-text u-text-2">15% OFF</h3>
            <p class="u-custom-font u-font-montserrat u-hidden-lg u-hidden-md u-hidden-sm u-hidden-xs u-large-text u-text u-text-custom-color-1 u-text-variant u-text-3">Check Out The Latest Pieces in the Stock</p>
          </div>
        </div>
        <div class="u-align-center u-carousel-item u-clearfix u-image u-shading u-section-1-2" src="" data-image-width="1200" data-image-height="876" data-href="laptops">
          <div class="u-clearfix u-sheet u-sheet-1">
            <h1 class="u-custom-font u-font-montserrat u-text u-text-custom-color-1 u-title u-text-1">Latest Laptops</h1>
            <h3 class="u-custom-font u-font-montserrat u-text u-text-2">15% OFF</h3>
            <p class="u-custom-font u-font-montserrat u-hidden-lg u-hidden-md u-hidden-sm u-hidden-xs u-large-text u-text u-text-custom-color-1 u-text-variant u-text-3">Check Out The Latest Pieces in the Stock</p>
          </div>
        </div>
      </div>
      <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-hover-custom-color-2 u-icon-circle u-text-custom-color-1 u-text-hover-custom-color-3 u-block-b220-3" href="#carousel_fb25" role="button" data-u-slide="prev">
        <span aria-hidden="true">
          <svg viewBox="0 0 256 256"><g><polygon points="207.093,30.187 176.907,0 48.907,128 176.907,256 207.093,225.813 109.28,128"></polygon>
</g></svg>
        </span>
        <span class="sr-only">
          <svg viewBox="0 0 256 256"><g><polygon points="207.093,30.187 176.907,0 48.907,128 176.907,256 207.093,225.813 109.28,128"></polygon>
</g></svg>
        </span>
      </a>
      <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-hover-custom-color-2 u-icon-circle u-text-custom-color-1 u-text-hover-custom-color-3 u-block-b220-4" href="#carousel_fb25" role="button" data-u-slide="next">
        <span aria-hidden="true">
          <svg viewBox="0 0 306 306"><g id="chevron-right"><polygon points="94.35,0 58.65,35.7 175.95,153 58.65,270.3 94.35,306 247.35,153"></polygon>
</g></svg>
        </span>
        <span class="sr-only">
          <svg viewBox="0 0 306 306"><g id="chevron-right"><polygon points="94.35,0 58.65,35.7 175.95,153 58.65,270.3 94.35,306 247.35,153"></polygon>
</g></svg>
        </span>
      </a>
    </section>
        <%
            String m1="";
          
            ps=co.prepareStatement("select MAX(p_id) from products where category=?");
            ps.setString(1,"Mobiles");
            rs=ps.executeQuery();
            while(rs.next())
            {
                m1=rs.getString(1);
            }
            ps.close();
            rs.close();
            
            int max1=Integer.parseInt(m1);
            String p_n1="";
            int p1=0;
            String d1="";
            String i1="";
            
            ps=co.prepareStatement("select * from products where p_id=?");
            ps.setInt(1,max1);
            rs=ps.executeQuery();
            while(rs.next())
            {
                
                p_n1=rs.getString(2);
                p1=rs.getInt(3);
                d1=rs.getString(5);
                i1=rs.getString(6);
            }
            ps.close();
            rs.close();
        %>
    <section class="u-clearfix u-custom-color-1 u-section-2" id="sec-9957">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-1">
                  <img alt="" class="u-expanded-width u-image u-image-default u-image-1" data-image-width="2000" data-image-height="1333" src="images/<%=i1%>">
                <h3 class="u-text u-text-default u-text-1"><%=p_n1%></h3>
                <p class="u-text u-text-2"><%=d1%></p>
                <a href="mobiles.jsp" class="u-active-none u-align-center-xs u-border-2 u-border-hover-palette-2-base u-border-palette-2-light-1 u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-1">Learn More</a>
              </div>
            </div>
             <%
            String m2="";
          
            ps=co.prepareStatement("select MAX(p_id) from products where category=? and p_id < ?");
            ps.setString(1,"Mobiles");
            ps.setInt(2,max1);
            rs=ps.executeQuery();
            while(rs.next())
            {
                m2=rs.getString(1);
            }
            ps.close();
            rs.close();
            
            int max2=Integer.parseInt(m2);
            String p_n2="";
            int p2=0;
            String d2="";
            String i2="";
            
            ps=co.prepareStatement("select * from products where p_id=?");
            ps.setInt(1,max2);
            rs=ps.executeQuery();
            while(rs.next())
            {
                p_n2=rs.getString(2);
                p2=rs.getInt(3);
                d2=rs.getString(5);
                i2=rs.getString(6);
            }
            ps.close();
            rs.close();
        %>   
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-2">
                <img alt="" class="u-expanded-width u-image u-image-default u-image-2" data-image-width="2000" data-image-height="1333" src="images/<%=i2%>">
                <h3 class="u-text u-text-default u-text-3"><%=p_n2%></h3>
                <p class="u-text u-text-4"><%=d2%></p>
                <a href="mobiles.jsp" class="u-active-none u-align-center-xs u-border-2 u-border-hover-palette-2-base u-border-palette-2-light-1 u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-2">learn more</a>
              </div>
            </div>
                
            <%
            String m3="";
          
            ps=co.prepareStatement("select MAX(p_id) from products where category=? and p_id < ?");
            ps.setString(1,"Mobiles");
            ps.setInt(2,max2);
            rs=ps.executeQuery();
            while(rs.next())
            {
                m3=rs.getString(1);
            }
            ps.close();
            rs.close();
            
            int max3=Integer.parseInt(m3);
            String p_n3="";
            int p3=0;
            String d3="";
            String i3="";
            
            ps=co.prepareStatement("select * from products where p_id=?");
            ps.setInt(1,max3);
            rs=ps.executeQuery();
            while(rs.next())
            {
                p_n3=rs.getString(2);
                p3=rs.getInt(3);
                d3=rs.getString(5);
                i3=rs.getString(6);
            }
            ps.close();
            rs.close();
        %>
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-3">
                <img alt="" class="u-expanded-width u-image u-image-default u-image-3" data-image-width="2000" data-image-height="1333" src="images/<%=i3%>">
                
                <h3 class="u-text u-text-default u-text-5"><%=p_n3%></h3>
                <p class="u-text u-text-6"><%=d3%></p>
                <a href="mobiles.jsp" class="u-active-none u-align-center-xs u-border-2 u-border-hover-palette-2-base u-border-palette-2-light-1 u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-3">Learn More</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-custom-color-1 u-section-3" id="sec-3a98">
      <div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
        <h3 class="u-align-center u-custom-font u-font-montserrat u-text u-text-default-xl u-text-1">New in the Market</h3>
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div class="u-clearfix u-custom-color-1 u-expanded-width u-gutter-12 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-size-30">
                <div class="u-layout-row">
                  <div class="u-align-center u-container-style u-custom-color-1 u-layout-cell u-radius-50 u-shape-round u-size-20 u-layout-cell-1" data-href="product_show.jsp?id=<%=max1%>">
                    <div class="u-border-3 u-border-custom-color-2 u-container-layout u-valign-top u-container-layout-1">
                      <img src="images/<%=i1%>" class="u-image u-image-circle u-image-1" alt="" data-image-width="790" data-image-height="345"></img>
                      <h5 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-default u-text-2"><%=p_n1%></h5>
                      <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-3">Rs <%=p1%>/-</h4>
                    </div>
                  </div>
                  <div class="u-align-center u-container-style u-layout-cell u-radius-50 u-shape-round u-size-20 u-layout-cell-2" data-href="product_show.jsp?id=<%=max2%>">
                    <div class="u-border-3 u-border-custom-color-2 u-container-layout u-container-layout-2">
                        <img src="images/<%=i2%>" class="u-image u-image-circle u-image-2" alt="" data-image-width="790" data-image-height="345"></img>
                      <h5 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-default u-text-4"><%=p_n2%></h5>
                      <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-5">Rs <%=p2%>/-
                      </h4>
                    </div>
                  </div>
                  <div class="u-align-center u-container-style u-layout-cell u-radius-50 u-shape-round u-size-20 u-layout-cell-3" data-href="product_show.jsp?id=<%=max3%>">
                    <div class="u-border-3 u-border-grey-75 u-container-layout u-valign-top u-container-layout-3">
                      <img src="images/<%=i3%>" class="u-image u-image-circle u-image-3" alt="" data-image-width="790" data-image-height="345"></img>
                      <h5 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-default u-text-6"><%=p_n3%></h5>
                      <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-7">Rs <%=p3%>/-
                      </h4>
                    </div>
                  </div>
                </div>
              </div>
                      <%
            String lm1="";
          
            ps=co.prepareStatement("select MAX(p_id) from products where category=?");
            ps.setString(1,"Laptops");
            rs=ps.executeQuery();
            while(rs.next())
            {
                lm1=rs.getString(1);
            }
            ps.close();
            rs.close();
            
            int lmax1=Integer.parseInt(lm1);
            String lp_n1="";
            int lp1=0;
            String ld1="";
            String li1="";
            
            ps=co.prepareStatement("select * from products where p_id=?");
            ps.setInt(1,lmax1);
            rs=ps.executeQuery();
            while(rs.next())
            {
                lp_n1=rs.getString(2);
                lp1=rs.getInt(3);
                ld1=rs.getString(5);
                li1=rs.getString(6);
            }
            ps.close();
            rs.close();
        %>
        
        <%
            String lm2="";
          
            ps=co.prepareStatement("select MAX(p_id) from products where category=? and p_id < ?");
            ps.setString(1,"Laptops");
            ps.setInt(2,lmax1);
            rs=ps.executeQuery();
            while(rs.next())
            {
                lm2=rs.getString(1);
            }
            ps.close();
            rs.close();
            
            int lmax2=Integer.parseInt(lm2);
            String lp_n2="";
            int lp2=0;
            String ld2="";
            String li2="";
            
            ps=co.prepareStatement("select * from products where p_id=?");
            ps.setInt(1,lmax2);
            rs=ps.executeQuery();
            while(rs.next())
            {
                lp_n2=rs.getString(2);
                lp2=rs.getInt(3);
                ld2=rs.getString(5);
                li2=rs.getString(6);
            }
            ps.close();
            rs.close();
        %>
        
            <%
            String lm3="";
          
            ps=co.prepareStatement("select MAX(p_id) from products where category=? and p_id < ?");
            ps.setString(1,"Laptops");
            ps.setInt(2,lmax2);
            rs=ps.executeQuery();
            while(rs.next())
            {
                lm3=rs.getString(1);
            }
            ps.close();
            rs.close();
            
            int lmax3=Integer.parseInt(lm3);
            String lp_n3="";
            int lp3=0;
            String ld3="";
            String li3="";
            
            ps=co.prepareStatement("select * from products where p_id=?");
            ps.setInt(1,lmax3);
            rs=ps.executeQuery();
            while(rs.next())
            {
                lp_n3=rs.getString(2);
                lp3=rs.getInt(3);
                ld3=rs.getString(5);
                li3=rs.getString(6);
            }
            ps.close();
            rs.close();
        %>
        <div class="u-size-30">
                <div class="u-layout-row">
                  <div class="u-align-center u-container-style u-layout-cell u-radius-50 u-shape-round u-size-20 u-layout-cell-4" data-href="product_show.jsp?id=<%=lmax1%>">
                    <div class="u-border-3 u-border-grey-75 u-container-layout u-valign-top u-container-layout-4">
                      <img src="images/<%=li1%>" class="u-image u-image-circle u-image-4" alt="" data-image-width="1200" data-image-height="876"></img>
                      <h5 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-default u-text-8"><%=lp_n1%></h5>
                      <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-9">Rs <%=lp1%>/-
                      </h4>
                    </div>
                  </div>
                  <div class="u-align-center u-container-style u-layout-cell u-radius-50 u-shape-round u-size-20 u-layout-cell-5" data-href="product_show.jsp?id=<%=lmax2%>">
                    <div class="u-border-3 u-border-custom-color-2 u-container-layout u-valign-top u-container-layout-5">
                      <img src="images/<%=li2%>" class="u-image u-image-circle u-image-5" alt="" data-image-width="1200" data-image-height="876"></img>
                      <h5 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-default u-text-10"><%=lp_n2%></h5>
                      <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-11">Rs <%=lp2%>/-
                      </h4>
                    </div>
                  </div>
                  <div class="u-align-center u-container-style u-layout-cell u-radius-50 u-shape-round u-size-20 u-layout-cell-6" data-href="product_show.jsp?id=<%=lmax3%>">
                    <div class="u-border-3 u-border-custom-color-2 u-container-layout u-valign-top u-container-layout-6">
                      <img src="images/<%=li3%>" class="u-image u-image-circle u-image-6" alt="" data-image-width="1200" data-image-height="876"></img>
                      <h5 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-default u-text-12"><%=lp_n3%></h5>
                      <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-13">Rs <%=lp3%>/-
                      </h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-custom-color-1 u-hidden-sm u-section-4" id="sec-320f">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-valign-middle-xs u-sheet-1">
        <div class="u-expanded-width-md u-hidden-sm u-hidden-xs u-list u-list-1">
          <div class="u-align-center-md u-align-center-sm u-align-center-xs u-repeater u-repeater-1">
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-custom-background u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-container-layout-1"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-881a"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-881a" style="enable-background:new 0 0 512 512;"><g><path style="fill:#72BE4F;" d="M58.898,211.343C26.363,211.343,0,226.053,0,244.171c0,18.158,26.363,32.851,58.898,32.851   c32.504,0,58.877-14.693,58.877-32.851C117.774,226.053,91.402,211.343,58.898,211.343L58.898,211.343z M52.926,267.771   c-11.132,0-39.677-5.008-39.677-24.086c0-13.326,17.769-24.084,39.677-24.084s39.655,10.758,39.655,24.084   C92.581,256.97,74.834,267.771,52.926,267.771L52.926,267.771z"></path><path style="fill:#72BE4F;" d="M191.68,211.343c-9.545,0-18.548,1.274-26.522,3.519c-0.369,0.104-0.624,0.478-0.624,0.904v6.28   c0,0.627,0.537,1.064,1.071,0.873c5.899-2.106,12.768-3.319,20.103-3.319c21.907,0,39.655,10.758,39.655,24.084   c0,13.285-17.748,24.086-39.655,24.086c-14.898,0-27.881-4.997-34.665-12.37c-0.164-0.178-0.251-0.422-0.251-0.677v-40.512   c0-0.511-0.37-0.925-0.826-0.925h-19.143c-0.456,0-0.826,0.414-0.826,0.925v85.519c0,0.511,0.37,0.925,0.826,0.925h19.143   c0.456,0,0.826-0.414,0.826-0.925v-30.478c0-0.674,0.612-1.114,1.16-0.834c10.473,5.34,24.411,8.603,39.727,8.603   c32.505,0,58.876-14.693,58.876-32.851C250.556,226.053,224.185,211.343,191.68,211.343L191.68,211.343z"></path><path style="fill:#72BE4F;" d="M324.463,211.343c-9.545,0-18.548,1.274-26.522,3.519c-0.369,0.104-0.624,0.478-0.624,0.904v6.28   c0,0.627,0.537,1.064,1.071,0.873c5.899-2.106,12.768-3.319,20.103-3.319c21.907,0,39.655,10.758,39.655,24.084   c0,13.285-17.748,24.086-39.655,24.086c-14.898,0-27.881-4.997-34.665-12.37c-0.164-0.178-0.251-0.422-0.251-0.677v-40.512   c0-0.511-0.37-0.925-0.826-0.925h-19.143c-0.456,0-0.826,0.414-0.826,0.925v85.519c0,0.511,0.37,0.925,0.826,0.925h19.143   c0.456,0,0.826-0.414,0.826-0.925v-30.478c0-0.674,0.612-1.114,1.16-0.834c10.473,5.34,24.411,8.603,39.727,8.603   c32.505,0,58.876-14.693,58.876-32.851C383.339,226.053,356.968,211.343,324.463,211.343L324.463,211.343z"></path><path style="fill:#72BE4F;" d="M453.123,211.343c-32.534,0-58.898,14.71-58.898,32.828c0,18.158,26.363,32.851,58.898,32.851   c32.504,0,58.877-14.693,58.877-32.851C512,226.053,485.628,211.343,453.123,211.343L453.123,211.343z M447.151,267.771   c-11.132,0-39.677-5.008-39.677-24.086c0-13.326,17.769-24.084,39.677-24.084s39.655,10.758,39.655,24.084   C486.807,256.97,469.059,267.771,447.151,267.771L447.151,267.771z"></path>
</g><g><path style="fill:#66AF3F;" d="M58.208,267.552c1.685,0.149,3.216,0.219,4.505,0.219c21.908,0,39.655-10.801,39.655-24.086   c0-13.326-17.747-24.084-39.655-24.084c-1.658,0-3.289,0.069-4.894,0.189c19.596,1.462,34.762,11.578,34.762,23.896   C92.581,255.883,77.615,265.98,58.208,267.552z"></path><path style="fill:#66AF3F;" d="M9.787,244.171c0-17.2,23.762-31.318,54.002-32.706c-1.615-0.074-3.243-0.122-4.892-0.122   C26.363,211.343,0,226.053,0,244.171c0,18.158,26.363,32.851,58.897,32.851c1.649,0,3.277-0.048,4.892-0.122   C33.549,275.513,9.787,261.408,9.787,244.171z"></path><path style="fill:#66AF3F;" d="M190.619,267.58c1.6,0.119,3.224,0.191,4.877,0.191c21.907,0,39.655-10.801,39.655-24.086   c0-13.326-17.748-24.084-39.655-24.084c-1.654,0-3.279,0.07-4.88,0.19c19.588,1.466,34.747,11.58,34.747,23.895   C225.364,255.961,210.206,266.108,190.619,267.58z"></path><path style="fill:#66AF3F;" d="M139.784,299.732v-85.519c0-0.511,0.37-0.925,0.826-0.925h-9.787c-0.456,0-0.826,0.414-0.826,0.925   v85.519c0,0.511,0.37,0.925,0.826,0.925h9.787C140.154,300.657,139.784,300.243,139.784,299.732z"></path><path style="fill:#66AF3F;" d="M323.402,267.58c1.6,0.119,3.224,0.191,4.877,0.191c21.907,0,39.655-10.801,39.655-24.086   c0-13.326-17.748-24.084-39.655-24.084c-1.654,0-3.279,0.07-4.879,0.19c19.588,1.466,34.747,11.58,34.747,23.895   C358.146,255.961,342.988,266.108,323.402,267.58z"></path><path style="fill:#66AF3F;" d="M272.567,299.732v-85.519c0-0.511,0.37-0.925,0.826-0.925h-9.787c-0.456,0-0.826,0.414-0.826,0.925   v85.519c0,0.511,0.37,0.925,0.826,0.925h9.787C272.937,300.657,272.567,300.243,272.567,299.732z"></path><path style="fill:#66AF3F;" d="M452.434,267.552c1.685,0.149,3.216,0.219,4.505,0.219c21.908,0,39.655-10.801,39.655-24.086   c0-13.326-17.747-24.084-39.655-24.084c-1.658,0-3.289,0.069-4.894,0.189c19.596,1.462,34.762,11.578,34.762,23.896   C486.807,255.883,471.841,265.98,452.434,267.552z"></path><path style="fill:#66AF3F;" d="M404.013,244.171c0-17.2,23.762-31.318,54.002-32.706c-1.615-0.074-3.243-0.122-4.892-0.122   c-32.534,0-58.898,14.71-58.898,32.828c0,18.158,26.364,32.851,58.898,32.851c1.649,0,3.277-0.048,4.892-0.122   C427.775,275.513,404.013,261.408,404.013,244.171z"></path>
</g></svg></span>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-container-layout-2"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0759"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-0759" style="enable-background:new 0 0 512 512;"><g><g><path style="fill:#579ADD;" d="M201.494,235.582c0.581,3.422,6.038,10.632,8.014,13.503c28.715,41.736,36.057,53.662,43.164,63.44    c5.268,7.238,14.326,15.159,28.142,14.524c12.987-0.585,20.204-8.788,25.778-16.844c0.134-0.194,49.066-72.179,47.529-69.894    c6.097-9.063-1.568-18.973-10.448-17.236c-5.58,1.084-8.002,6.062-10.872,10.438c-0.146,0.223-43.3,63.771-43.107,63.489    c-2.396,3.501-6.275,9.91-12.776,8.333c-4.851-1.176-8.194-7.202-10.588-10.784c-0.67-1-37.161-54.822-43.111-63.465    c-2.714-3.92-5.706-9.371-13.055-8.042C204.912,223.985,200.358,229.069,201.494,235.582L201.494,235.582z"></path><path style="fill:#579ADD;" d="M0.108,235.287c0.517,3.737,6.005,10.679,7.941,13.546l34.492,50.749    c8.549,12.823,16.88,28.201,36.502,27.495c18.104-0.651,25.575-15.836,34.822-29.499c41.233-60.93,41.919-59.545,41.092-65.362    c-0.768-5.414-5.752-10.153-12.214-9.228c-7.836,1.121-6.551,5.318-45.555,61.014c-11.043,15.827-13.59,22.792-21.191,21.408    c-5.187-0.933-8.121-6.82-10.883-10.768c-48.147-68.615-45.552-73.241-56.138-71.645C3.762,223.781-0.764,228.843,0.108,235.287    L0.108,235.287z"></path><path style="fill:#579ADD;" d="M176.781,185.225c-1.83,0.729-2.977,2.338-4.23,3.583l-7.754,7.7    c-5.042,5.097-0.904,7.097,5.406,13.436c1.363,1.375,2.497,2.474,3.874,3.844c5.048,5.06,6.882,1.345,13.535-5.269    c9.17-9.142,8.896-7.25-5.394-21.412C181.018,185.907,179.407,184.173,176.781,185.225L176.781,185.225z"></path>
</g><g><path style="fill:#4987CE;" d="M288.938,305.335c6.501,1.576,10.379-4.832,12.776-8.334    c49.082-71.707,46.292-69.605,49.998-72.218c-2.23-1.562-5.065-2.291-8.039-1.709c-5.58,1.084-8.002,6.062-10.872,10.439    c-0.191,0.282-43.27,63.728-43.107,63.489c-1.197,1.748-2.763,4.222-4.841,6.064C286.081,304.142,287.437,304.971,288.938,305.335    z"></path><path style="fill:#4987CE;" d="M264.692,312.525c-5.215-7.175-12.193-17.906-17.251-25.383    c-32.202-47.292-33.379-48.336-33.927-51.56c-0.815-4.674,1.306-8.601,4.506-10.8c-1.947-1.491-4.422-2.358-7.855-1.737    c-5.252,0.941-9.806,6.025-8.67,12.538c0.568,3.348,2.25,5.038,33.927,51.56c5.058,7.477,12.036,18.208,17.251,25.383    c5.268,7.238,14.326,15.159,28.142,14.524c1.58-0.071,3.072-0.259,4.488-0.542C275.639,324.617,268.934,318.353,264.692,312.525z"></path><path style="fill:#4987CE;" d="M88.017,305.41c7.446,1.356,8.011-1.785,38.455-46.793c22.054-32.756,21.409-32.079,23.882-33.856    c-2.066-1.441-4.683-2.191-7.61-1.772c-5.637,0.806-8.051,5.635-11.078,10.226c-0.685,1.03-45.029,67.119-48.138,69.879    C84.829,304.24,86.297,305.101,88.017,305.41z"></path><path style="fill:#4987CE;" d="M54.561,299.581c-41.667-61.306-41.949-60.793-42.433-64.294c-0.614-4.535,1.45-8.377,4.541-10.534    c-1.925-1.44-4.346-2.261-7.692-1.757c-5.215,0.785-9.741,5.846-8.868,12.291c0.484,3.503,0.797,3.034,42.433,64.294    c8.549,12.823,16.88,28.201,36.502,27.495c1.67-0.06,3.247-0.246,4.746-0.54C69.22,323.716,61.969,310.693,54.561,299.581z"></path><path style="fill:#4987CE;" d="M181.192,209.944c-6.31-6.339-10.449-8.34-5.406-13.436l7.755-7.7    c0.066-0.066,0.131-0.136,0.197-0.203c-0.489-0.48-0.992-0.975-1.52-1.498c-1.2-1.2-2.811-2.934-5.436-1.882    c-1.83,0.729-2.977,2.338-4.23,3.583l-7.754,7.7c-5.042,5.096-0.904,7.097,5.406,13.436c1.363,1.375,2.497,2.474,3.874,3.844    c3.905,3.915,5.895,2.566,9.673-1.303C182.907,211.654,182.099,210.859,181.192,209.944z"></path>
</g><path style="fill:#579ADD;" d="M178.535,327.076h-0.64c-5.82,0-10.582-4.762-10.582-10.582v-83.019   c0-5.82,4.762-10.582,10.582-10.582h0.64c5.82,0,10.582,4.762,10.582,10.582v83.019   C189.116,322.314,184.355,327.076,178.535,327.076z"></path><path style="fill:#4987CE;" d="M178.215,316.174v-82.378c0-4.011,2.202-7.526,5.451-9.419c-1.607-0.936-3.466-1.482-5.451-1.482   c-5.996,0-10.902,4.906-10.902,10.902v82.378c0,5.996,4.906,10.902,10.902,10.902c1.985,0,3.844-0.546,5.451-1.482   C180.416,323.7,178.215,320.185,178.215,316.174z"></path><path style="fill:#579ADD;" d="M459.243,221.121h-50.997c-29.137,0-52.757,23.62-52.757,52.757s23.62,52.757,52.757,52.757h50.997   c29.137,0,52.757-23.62,52.757-52.757S488.38,221.121,459.243,221.121z M459.08,306.564h-50.67   c-18.052,0-32.687-14.634-32.687-32.687c0-18.052,14.634-32.687,32.687-32.687h50.67c18.052,0,32.687,14.634,32.687,32.687   C491.767,291.93,477.132,306.564,459.08,306.564z"></path><g><path style="fill:#4987CE;" d="M459.08,306.564h10.131c18.052,0,32.687-14.634,32.687-32.687    c0-18.052-14.634-32.687-32.687-32.687H459.08c18.052,0,32.687,14.634,32.687,32.687    C491.766,291.93,477.132,306.564,459.08,306.564z"></path><path style="fill:#4987CE;" d="M365.621,273.878c0-29.137,23.62-52.757,52.757-52.757h-10.131    c-29.137,0-52.757,23.62-52.757,52.757s23.62,52.757,52.757,52.757h10.131C389.241,326.635,365.621,303.015,365.621,273.878z"></path>
</g>
</g></svg></span>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-container-layout-3"><span class="u-icon u-icon-circle u-text-black u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.003 512.003" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f3a2"></use></svg><svg class="u-svg-content" viewBox="0 0 512.003 512.003" x="0px" y="0px" id="svg-f3a2" style="enable-background:new 0 0 512.003 512.003;"><g><g><path d="M351.98,0c-27.296,1.888-59.2,19.36-77.792,42.112c-16.96,20.64-30.912,51.296-25.472,81.088    c29.824,0.928,60.64-16.96,78.496-40.096C343.916,61.568,356.556,31.104,351.98,0z"></path>
</g>
</g><g><g><path d="M459.852,171.776c-26.208-32.864-63.04-51.936-97.824-51.936c-45.92,0-65.344,21.984-97.248,21.984    c-32.896,0-57.888-21.92-97.6-21.92c-39.008,0-80.544,23.84-106.88,64.608c-37.024,57.408-30.688,165.344,29.312,257.28    c21.472,32.896,50.144,69.888,87.648,70.208c33.376,0.32,42.784-21.408,88-21.632c45.216-0.256,53.792,21.92,87.104,21.568    c37.536-0.288,67.776-41.28,89.248-74.176c15.392-23.584,21.12-35.456,33.056-62.08    C387.852,342.624,373.932,219.168,459.852,171.776z"></path>
</g>
</g></svg></span>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-container-layout-4"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-2c49"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-2c49" style="enable-background:new 0 0 512 512;"><path style="fill:#0964AF;" d="M511.686,211.219c-10.56-60.905-265.338-51.36-425.524,16.027l-12.73,5.584  c-48.347,22.168-76.765,46.794-73.119,67.946c10.625,61.333,267.711,51.005,426.962-16.636l18.991-8.615  C489.909,254.316,515.139,231.227,511.686,211.219z"></path><path style="fill:#004F9C;" d="M26.615,300.776c-3.646-21.152,24.772-45.779,73.119-67.946l12.73-5.584  c79.585-33.479,190.439-54.642,279.424-56.575c-95.084-2.188-219.877,20.461-305.726,56.575l-12.73,5.584  c-48.347,22.168-76.765,46.794-73.119,67.946c4.81,27.766,63.599,42.343,146.031,40.55C77.938,339.75,30.896,325.488,26.615,300.776  z"></path><g><path style="fill:#F2F2F2;" d="M428.577,253.821v5.189c0,0.851,0.69,1.541,1.541,1.541h2.956c0.568,0,1.029,0.461,1.029,1.029   v6.831c0.026,0.703-0.016,1.459-0.13,2.063c-0.229,1.469-1.609,3.954-5.531,3.954c-3.906,0-5.261-2.485-5.505-3.954   c-0.099-0.604-0.146-1.359-0.146-2.063v-24.809c0-0.885,0.063-1.838,0.25-2.557c0.266-1.323,1.433-3.938,5.37-3.938   c4.131,0,5.157,2.745,5.386,3.938c0.161,0.776,0.177,2.089,0.177,2.089v1.613c0,0.769,0.623,1.392,1.392,1.392h10.456   c0.962,0,1.742-0.78,1.742-1.742v-0.039c0,0,0.057-1.859-0.104-3.594c-1.016-10.183-9.36-13.391-18.939-13.391   c-9.584,0-17.756,3.245-18.944,13.391c-0.104,0.937-0.271,2.609-0.271,3.594v22.829c0,0.984,0.026,1.755,0.208,3.578   c0.849,9.474,8.719,13.089,17.762,13.376l18.991-8.615c0.625-1.386,1.042-2.969,1.219-4.761c0.146-1.823,0.161-2.594,0.198-3.578   v-13.304c0-0.69-0.559-1.249-1.249-1.249h-16.669C429.109,252.633,428.577,253.165,428.577,253.821z"></path><path style="fill:#F2F2F2;" d="M108.658,263.941c-2.266-11.402-22.751-14.767-24.288-21.126c-0.25-1.089-0.193-2.245-0.052-2.844   c0.38-1.734,1.542-3.662,4.933-3.662c3.172,0,5.032,1.979,5.032,4.938v2.168c0,0.655,0.531,1.187,1.187,1.187h10.577   c0.939,0,1.7-0.761,1.7-1.7v-2.123c0-11.792-10.584-13.678-18.225-13.678c-1.151,0-2.276,0.042-3.36,0.146l-12.73,5.584   c-1.391,1.677-2.349,3.75-2.766,6.329c-0.396,2.437-0.459,4.573,0.109,7.318c2.333,11.089,21.527,14.313,24.319,21.324   c0.521,1.313,0.354,2.98,0.099,4.006c-0.443,1.834-1.662,3.667-5.271,3.667c-3.365,0-5.391-1.969-5.391-4.933l-0.017-4.141   c-0.002-0.599-0.488-1.083-1.087-1.083h-11.94c-0.804,0-1.456,0.652-1.456,1.456v2.695c0,12.131,9.475,15.782,19.616,15.782   c9.761,0,17.777-3.339,19.079-12.423C109.377,268.15,108.887,265.087,108.658,263.941z"></path><path style="fill:#F2F2F2;" d="M147.136,281.979l-6.811-46.531c-0.065-0.442-0.702-0.443-0.768-0.001l-7.003,46.689   c-0.083,0.557-0.562,0.968-1.125,0.968h-12.52c-0.561,0-0.985-0.509-0.884-1.061l9.498-51.551c0.178-0.965,1.02-1.666,2.001-1.666   h20.882c0.822,0,1.527,0.587,1.676,1.396l9.499,51.775c0.106,0.576-0.337,1.108-0.923,1.108h-12.223   C147.784,283.103,147.231,282.625,147.136,281.979z"></path><path style="fill:#F2F2F2;" d="M219.036,281.335l-0.338-45.918c-0.002-0.296-0.431-0.334-0.484-0.043l-8.615,46.612   c-0.12,0.647-0.684,1.117-1.342,1.117h-10.863c-0.982,0-1.824-0.701-2.003-1.667l-8.454-45.794   c-0.059-0.322-0.533-0.28-0.535,0.047l-0.341,46.338c-0.004,0.595-0.488,1.076-1.084,1.076h-10.992   c-0.783,0-1.414-0.644-1.397-1.427l1.112-51.257c0.019-0.886,0.743-1.595,1.63-1.595h18.912c0.87,0,1.611,0.632,1.749,1.491   l6.044,37.641c0.097,0.602,0.962,0.602,1.059,0l6.063-37.759c0.127-0.791,0.809-1.372,1.61-1.372h19.439   c0.646,0,1.174,0.516,1.188,1.162l1.146,51.248c0.023,1.025-0.802,1.869-1.827,1.869h-9.895   C219.839,283.103,219.044,282.314,219.036,281.335z"></path><path style="fill:#F2F2F2;" d="M284.064,272.671c-1.276,8.985-9.24,12.282-18.892,12.282c-10.063,0-19.413-3.61-19.413-15.605   v-3.012c0-0.626,0.508-1.134,1.134-1.134h11.86c0.74,0,1.341,0.6,1.341,1.341v3.868c0,2.927,2.026,4.87,5.381,4.87   c3.589,0,4.792-1.808,5.204-3.61c0.25-1,0.385-2.677-0.099-3.99c-2.75-6.933-21.751-10.12-24.064-21.095   c-0.599-2.714-0.51-4.844-0.135-7.235c1.433-8.787,9.193-11.944,18.694-11.944c7.563,0,17.985,1.833,17.985,13.537v2.269   c0,0.826-0.67,1.496-1.496,1.496h-10.435c-0.763,0-1.381-0.618-1.381-1.381v-1.931c0-2.922-1.828-4.881-4.943-4.881   c-3.344,0-4.506,1.896-4.902,3.631c-0.125,0.588-0.182,1.729,0.052,2.813c1.536,6.271,21.783,9.657,24.012,20.918   C284.209,265.009,284.668,268.03,284.064,272.671"></path><path style="fill:#F2F2F2;" d="M334.707,271.322c-0.958,10.141-8.896,13.428-18.84,13.428c-9.933,0-17.876-3.287-18.814-13.428   c-0.062-0.542-0.135-2.584-0.12-3.583V230.91c0-1.151,0.933-2.084,2.084-2.084h9.674c1.043,0,1.889,0.846,1.889,1.889v38.269   c-0.026,0.693,0,1.49,0.135,2.063c0.261,1.344,1.427,3.938,5.151,3.938c3.766,0,4.896-2.594,5.183-3.938   c0.12-0.573,0.146-1.37,0.12-2.063v-38.494c0-0.919,0.745-1.664,1.664-1.664h10.124c1.026,0,1.858,0.832,1.858,1.858v37.055   C334.874,268.738,334.79,270.78,334.707,271.322"></path><path style="fill:#F2F2F2;" d="M393.433,282.536h-16.261c-0.732,0-1.378-0.479-1.59-1.18l-12.401-40.929   c-0.146-0.483-0.859-0.371-0.85,0.133l0.688,40.23c0.016,0.959-0.756,1.745-1.715,1.745h-9.806c-0.938,0-1.699-0.761-1.699-1.699   v-50.206c0-0.998,0.809-1.806,1.806-1.806h16.447c1.054,0,1.982,0.696,2.276,1.708l11.618,39.949   c0.093,0.319,0.564,0.248,0.559-0.084l-0.658-39.726c-0.017-1.015,0.802-1.848,1.817-1.848h10.115c0.761,0,1.377,0.617,1.377,1.377   v50.613C395.153,281.766,394.383,282.536,393.433,282.536z"></path>
</g></svg></span>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-container-layout-5"><span class="u-icon u-icon-circle u-icon-5"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-d195"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-d195" style="enable-background:new 0 0 512 512;"><path style="fill:#F97E19;" d="M274.03,0h-36.059H12.561C5.624,0,0,5.624,0,12.561v486.878C0,506.377,5.624,512,12.561,512h486.878  c6.937,0,12.561-5.624,12.561-12.561V274.03v-36.059V12.561C512,5.624,506.377,0,499.439,0H274.03z"></path><g><path style="fill:#FFFFFF;" d="M95.086,156.777v198.447c0,1.754,1.422,3.177,3.176,3.177h44.847c1.754,0,3.176-1.422,3.176-3.177   V200.809c0-1.754,1.422-3.176,3.176-3.176h99.553c19.759,0,36.315,17.115,36.023,36.315c0.57,40.416,0.064,80.867,0.207,121.285   c0.006,1.751,1.429,3.167,3.18,3.167h44.857c1.754,0,3.176-1.422,3.176-3.176l0.036-139.343c0-33.507-29.457-62.281-61.989-62.281   H98.262C96.508,153.6,95.086,155.022,95.086,156.777z"></path><path style="fill:#FFFFFF;" d="M373.029,156.777v198.447c0,1.754,1.422,3.177,3.177,3.177h44.847c1.754,0,3.177-1.422,3.177-3.177   V156.777c0-1.754-1.422-3.176-3.177-3.176h-44.847C374.451,153.6,373.029,155.022,373.029,156.777z"></path><path style="fill:#FFFFFF;" d="M190.172,237.234v117.99c0,1.754,1.422,3.177,3.176,3.177h44.847c1.754,0,3.176-1.422,3.176-3.177   v-117.99c0-1.754-1.422-3.176-3.176-3.176h-44.847C191.594,234.057,190.172,235.48,190.172,237.234z"></path>
</g><path style="fill:#EA6D11;" d="M21.12,499.439V12.561C21.12,5.624,26.744,0,33.681,0h-21.12C5.624,0,0,5.624,0,12.561v486.878  C0,506.377,5.624,512,12.561,512h21.12C26.744,512,21.12,506.377,21.12,499.439z"></path><g><path style="fill:#D6D6D8;" d="M116.206,355.224V156.777c0-1.754,1.422-3.177,3.176-3.177h-21.12c-1.754,0-3.176,1.422-3.176,3.177   v198.447c0,1.754,1.422,3.176,3.176,3.176h21.12C117.628,358.4,116.206,356.978,116.206,355.224z"></path><path style="fill:#D6D6D8;" d="M306.158,355.233c-0.143-40.418,0.57-80.869,0-121.285c0.293-19.2-16.263-36.315-36.023-36.315   h-21.12c19.76,0,36.315,17.115,36.023,36.315c0.57,40.416,0.064,80.867,0.207,121.285c0.006,1.751,1.429,3.167,3.18,3.167h21.12   C307.794,358.4,306.164,356.984,306.158,355.233z"></path><path style="fill:#D6D6D8;" d="M394.149,355.224V156.777c0-1.754,1.422-3.177,3.177-3.177h-21.12c-1.754,0-3.177,1.422-3.177,3.177   v198.447c0,1.754,1.422,3.176,3.177,3.176h21.12C395.571,358.4,394.149,356.978,394.149,355.224z"></path><path style="fill:#D6D6D8;" d="M211.292,355.224v-117.99c0-1.754,1.422-3.176,3.177-3.176h-21.12c-1.755,0-3.177,1.422-3.177,3.176   v117.99c0,1.754,1.422,3.176,3.177,3.176h21.12C212.714,358.4,211.292,356.978,211.292,355.224z"></path>
</g></svg></span>
              </div>
            </div>
          </div>
        </div>
        <div class="u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-hidden-sm u-hidden-xs u-list u-list-2">
          <div class="u-repeater u-repeater-2">
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-6"><span class="u-icon u-icon-circle u-icon-6"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 13.802 13.802" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e1b4"></use></svg><svg class="u-svg-content" viewBox="0 0 13.802 13.802" x="0px" y="0px" id="svg-e1b4" style="enable-background:new 0 0 13.802 13.802;"><g><g><path style="fill:currentColor;" d="M10.668,7.333c-0.018-1.749,1.426-2.586,1.49-2.628c-0.811-1.185-2.073-1.348-2.524-1.366    c-1.073-0.11-2.096,0.632-2.642,0.632c-0.544,0-1.386-0.617-2.277-0.601C3.543,3.388,2.464,4.052,1.86,5.1    c-1.217,2.112-0.312,5.24,0.874,6.955c0.58,0.838,1.272,1.779,2.179,1.746c0.874-0.035,1.204-0.566,2.261-0.566    s1.354,0.566,2.278,0.549c0.941-0.018,1.536-0.855,2.111-1.695c0.666-0.973,0.94-1.916,0.957-1.963    C12.498,10.114,10.687,9.421,10.668,7.333z"></path><path style="fill:currentColor;" d="M8.93,2.204C9.411,1.621,9.737,0.809,9.648,0C8.953,0.028,8.114,0.461,7.615,1.045    C7.168,1.562,6.779,2.387,6.883,3.18C7.657,3.241,8.449,2.786,8.93,2.204z"></path>
</g>
</g></svg></span>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-7"><span class="u-icon u-icon-circle u-icon-7"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-19ec"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-19ec" style="enable-background:new 0 0 512 512;"><g><path style="fill:#0964AF;" d="M48.129,237.862L0.166,312.124c-0.441,0.682,0.049,1.582,0.861,1.582h31.276   c0.347,0,0.671-0.176,0.86-0.467L79.364,242.1c0.417-0.642,0.009-1.498-0.752-1.578l-29.515-3.123   C48.713,237.358,48.338,237.537,48.129,237.862z"></path><path style="fill:#0964AF;" d="M56.611,226.427c-0.803,0-1.294-0.88-0.873-1.564c2.849-4.619,11.188-18.071,13.567-21.16   c2.76-3.783,6.419-5.396,10.263-5.396h44.707c0.566,0,1.025,0.459,1.025,1.025v18.609c0,1.123,1.549,1.436,1.969,0.394   c1.214-3.012,2.963-6.528,5.178-8.816c4.27-4.432,9.968-10.572,22.978-11.394c0.027-0.002,0.054-0.003,0.081-0.003h94.802   c0.566,0,1.025,0.459,1.025,1.025V225.4c0,0.566-0.459,1.025-1.025,1.025H56.611V226.427z"></path><path style="fill:#0964AF;" d="M512,225.332v-26.276c0-0.566-0.459-1.025-1.025-1.025H409.467c-0.027,0-0.054,0.001-0.081,0.003   c-14.69,0.931-25.75,9.932-30.065,25.893c-0.023,0.087-0.034,0.172-0.034,0.262v1.122c0,0.566,0.459,1.025,1.025,1.025   l130.662,0.022C511.541,226.357,512,225.898,512,225.332z"></path><path style="fill:#0964AF;" d="M283.973,226.335h-26.612c-0.566,0-1.025-0.459-1.025-1.025v-26.117   c0-0.566,0.459-1.025,1.025-1.025h26.612c0.566,0,1.025,0.459,1.025,1.025v26.117C284.999,225.876,284.54,226.335,283.973,226.335z   "></path><path style="fill:#0964AF;" d="M378.054,226.335h-26.586c-0.566,0-1.025-0.459-1.025-1.025v-26.117   c0-0.566,0.459-1.025,1.025-1.025h26.586c0.566,0,1.025,0.459,1.025,1.025v26.117C379.079,225.876,378.62,226.335,378.054,226.335z   "></path><path style="fill:#0964AF;" d="M378.114,245.732l-26.106-1.544c-0.589-0.035-1.086,0.433-1.086,1.024v31.591   c0,0-0.085,9.413-9.281,9.413h-48.336c-0.038,0-0.07-0.001-0.108-0.005c-0.717-0.077-8.138-1.076-8.138-9.321v-36.247   c0-0.538-0.416-0.984-0.952-1.023l-26.39-1.886c-0.594-0.042-1.098,0.428-1.098,1.023v48.904c0,0.071,0.007,0.143,0.02,0.213   c4.639,23.941,26.509,25.785,26.509,25.785s2.109,0.141,2.565,0.18c0.028,0.002,0.049,0.003,0.077,0.003h65.27   c0.033,0,0.061-0.001,0.093-0.004c1.28-0.117,27.924-2.862,27.924-28.791v-38.291C379.079,246.213,378.656,245.764,378.114,245.732   z"></path><path style="fill:#0964AF;" d="M97.232,313.723h132.921c0.073,0,0.148-0.007,0.219-0.022c23.247-4.678,25.679-25.589,25.679-25.589   c1.038-5.895,0.521-10.724,0.462-11.229c-0.003-0.028-0.006-0.051-0.011-0.079c-0.741-4.268-8.817-22.727-26.29-24.336   c-9.702-0.893-90.571-7.258-102.084-8.163c-0.683-0.054-1.23,0.569-1.076,1.237c1.927,8.335,5.842,12.665,8.488,15.196   c6.205,5.895,15.937,7.731,16.687,7.865c0.031,0.005,0.05,0.008,0.081,0.011c3.024,0.278,71.633,5.896,71.633,5.896   c2.204,0.115,6.382,0.667,6.332,6.076c0,0.653-0.603,5.423-5.914,5.423h-99.255c-0.566,0-1.025-0.459-1.025-1.025v-40.065   c0-0.538-0.415-0.984-0.951-1.023l-25.822-1.871c-0.594-0.043-1.099,0.427-1.099,1.023V312.7   C96.207,313.264,96.666,313.723,97.232,313.723z"></path><path style="fill:#0964AF;" d="M379.347,286.858c0.001-0.565,0.46-1.023,1.025-1.023h98.565c1.802,0,4.436-1.019,4.883-1.448   c0.983-0.944,1.76-2.568,1.76-4.132c0-5.397-4.496-5.631-6.752-5.746c0,0-69.41-5.732-72.373-5.97   c-0.029-0.002-0.047-0.005-0.076-0.01c-0.713-0.116-9.908-1.714-16.125-7.635c-2.661-2.5-6.144-5.217-8.86-13.592   c-0.223-0.689,0.309-1.394,1.032-1.352c11.954,0.699,92.825,5.443,102.44,6.333c17.547,1.662,25.765,18.84,26.505,24.556   c0,0,0.753,5.166-0.159,11.509c0,0-3.631,24.125-29.324,25.619c-0.026,0.001-0.053,0.002-0.079,0.002H380.315   c-0.567,0-1.027-0.46-1.025-1.028L379.347,286.858z"></path>
</g><g><path style="fill:#004F9C;" d="M20.805,312.124l46.985-72.748l-18.692-1.978c-0.385-0.041-0.759,0.139-0.969,0.463L0.166,312.124   c-0.441,0.682,0.049,1.581,0.861,1.581h20.639C20.854,313.706,20.364,312.807,20.805,312.124z"></path><path style="fill:#004F9C;" d="M399.927,225.196c0-0.093,0.01-0.182,0.034-0.272c4.527-17.392,16.141-25.974,30.065-26.891   c0.027-0.002,0.054-0.003,0.081-0.003h-20.639c-0.027,0-0.054,0.001-0.081,0.003c-14.689,0.931-25.751,9.932-30.065,25.893   c-0.023,0.087-0.034,0.172-0.034,0.262v1.122c0,0.566,0.459,1.025,1.025,1.025l19.614,0.003V225.196z"></path><path style="fill:#004F9C;" d="M276.976,225.31v-26.118c0-0.566,0.459-1.025,1.025-1.025h-20.639c-0.566,0-1.025,0.459-1.025,1.025   v26.118c0,0.566,0.459,1.025,1.025,1.025h20.639C277.435,226.335,276.976,225.876,276.976,225.31z"></path><path style="fill:#004F9C;" d="M371.081,225.31v-26.118c0-0.566,0.459-1.025,1.025-1.025h-20.639c-0.566,0-1.025,0.459-1.025,1.025   v26.118c0,0.566,0.459,1.025,1.025,1.025h20.639C371.54,226.335,371.081,225.876,371.081,225.31z"></path><path style="fill:#004F9C;" d="M371.562,276.803v-31.458l-19.553-1.157c-0.589-0.035-1.086,0.434-1.086,1.024v31.591   c0,0-0.085,9.413-9.281,9.413h20.639C371.477,286.216,371.562,276.803,371.562,276.803z"></path><path style="fill:#004F9C;" d="M303.789,313.659c0,0-21.87-1.844-26.509-25.785c-0.013-0.07-0.02-0.142-0.02-0.213v-48.53   l-19.541-1.397c-0.594-0.042-1.098,0.428-1.098,1.023v48.904c0,0.071,0.007,0.143,0.02,0.213   c4.639,23.941,26.509,25.785,26.509,25.785s2.109,0.141,2.565,0.18c0.028,0.002,0.049,0.003,0.077,0.003h20.639   c-0.028,0-0.049-0.001-0.077-0.003C305.898,313.8,303.789,313.659,303.789,313.659z"></path><path style="fill:#004F9C;" d="M116.846,312.698V243.44l-19.54-1.416c-0.594-0.043-1.099,0.427-1.099,1.023v69.652   c0,0.566,0.459,1.025,1.025,1.025h20.639C117.305,313.723,116.846,313.264,116.846,312.698z"></path><path style="fill:#004F9C;" d="M399.929,312.942l0.057-26.084c0.001-0.565,0.46-1.023,1.025-1.023h-20.639   c-0.565,0-1.024,0.458-1.025,1.023l-0.057,26.084c-0.001,0.567,0.458,1.027,1.025,1.027h20.639   C400.387,313.969,399.928,313.509,399.929,312.942z"></path><path style="fill:#004F9C;" d="M155.506,198.031c-0.027,0-0.054,0.001-0.081,0.003c-3.719,0.235-6.824,0.914-9.485,1.854v0.106   c-6.645,2.346-10.445,6.363-13.492,9.526c-2.215,2.288-3.964,5.804-5.178,8.816c-0.42,1.042-1.968,0.73-1.969-0.393l0.011,8.485   h22.209c-1.638-7.534,4.254-15.423,4.278-15.455c0.412-0.553,0.838-1.079,1.288-1.544c4.27-4.432,9.968-10.572,22.978-11.394   c0.027-0.002,0.054-0.003,0.081-0.003L155.506,198.031L155.506,198.031z"></path><path style="fill:#004F9C;" d="M69.305,203.611c-2.379,3.089-10.718,16.542-13.567,21.16c-0.422,0.683,0.07,1.564,0.873,1.564   H77.25c-0.803,0-1.294-0.881-0.873-1.564c2.849-4.619,11.188-18.071,13.566-21.16c2.76-3.783,6.419-5.396,10.263-5.396H79.569   C75.724,198.214,72.066,199.828,69.305,203.611z"></path><path style="fill:#004F9C;" d="M135.541,260.737c6.205,5.895,15.937,7.73,16.687,7.865c0.031,0.005,0.05,0.008,0.081,0.011   c1.042,0.096,9.87,0.826,20.996,1.741c-19.373-8.919-22.582-24.269-22.582-24.269l0,0c-10.867-0.858-19.401-1.53-22.595-1.78   c-0.683-0.054-1.23,0.568-1.076,1.236C128.98,253.875,132.895,258.206,135.541,260.737z"></path><path style="fill:#004F9C;" d="M390.254,260.894c6.217,5.921,15.412,7.519,16.125,7.635c0.029,0.005,0.047,0.008,0.076,0.01   c0.879,0.071,7.603,0.624,16.628,1.369c-16.914-9.101-20.132-22.75-20.132-22.75l0,0c-9.809-0.581-17.451-1.028-20.526-1.209   c-0.723-0.042-1.255,0.663-1.032,1.352C384.11,255.677,387.593,258.394,390.254,260.894z"></path>
</g></svg></span>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-8"><span class="u-icon u-icon-circle u-icon-8"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.001 512.001" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0fdb"></use></svg><svg class="u-svg-content" viewBox="0 0 512.001 512.001" x="0px" y="0px" id="svg-0fdb" style="enable-background:new 0 0 512.001 512.001;"><path style="fill:#579ADD;" d="M256.001,0c-2.651,0-5.29,0.047-7.921,0.131c-2.169,0.07-4.07,1.47-4.812,3.509l-48.536,133.396  c-1.266,3.48,1.311,7.161,5.015,7.161h37.987c27.136,0,41.758,20.883,32.466,46.408l-63.312,173.993  c-0.767,2.109-2.772,3.512-5.016,3.512l-42.876-0.008c-3.704-0.001-6.281-3.682-5.013-7.163l64.093-175.935  c1.268-3.481-1.309-7.163-5.014-7.163h-29.416c-2.243,0-4.246,1.402-5.014,3.51L111.878,364.59c-0.768,2.107-2.771,3.51-5.014,3.51  l-42.899-0.004c-3.704,0-6.281-3.681-5.014-7.162l0,0l0,0L183.234,19.482c1.524-4.188-2.453-8.283-6.69-6.901  C74.059,46.012,0.001,142.353,0.001,256.001c0,119.219,81.502,219.395,191.827,247.874c2.674,0.69,5.438-0.742,6.383-3.337l0,0  L326.645,147.71l0,0c0.767-2.108,2.771-3.511,5.015-3.511h96.15c27.161,0,41.781,20.883,32.495,46.408l-56.761,155.906  c-4.322,11.87-18.195,21.584-30.833,21.584h-68.263c-2.244,0-4.247,1.403-5.015,3.512L250.955,504.84  c-1.26,3.462,1.285,7.16,4.969,7.161c0.025,0,0.051,0,0.076,0c141.385,0,256-114.617,256-256C512.001,114.614,397.386,0,256.001,0z"></path><g><path style="fill:#4987CE;" d="M237.734,144.198c27.136,0,41.758,20.883,32.466,46.408l-63.312,173.993   c-0.762,2.094-2.744,3.489-4.969,3.508l20.558,0.004c2.244,0.001,4.248-1.403,5.016-3.512l63.312-173.993   c9.292-25.525-5.33-46.408-32.466-46.408H237.734z"></path><path style="fill:#4987CE;" d="M424.148,346.513l56.761-155.906c9.286-25.525-5.335-46.408-32.496-46.408h-20.605   c27.161,0,41.781,20.883,32.496,46.408l-56.761,155.906c-4.322,11.87-18.195,21.584-30.833,21.584h20.605   C405.953,368.097,419.826,358.382,424.148,346.513z"></path><path style="fill:#4987CE;" d="M132.482,364.592l66.753-183.239c0.768-2.107,2.771-3.51,5.014-3.51h-20.605   c-2.243,0-4.246,1.402-5.014,3.51l-66.753,183.239c-0.765,2.1-2.757,3.498-4.99,3.508l20.581,0.002   C129.711,368.102,131.715,366.699,132.482,364.592z"></path><path style="fill:#4987CE;" d="M271.56,504.84l48.478-133.231c0.767-2.109,2.771-3.512,5.015-3.512h-20.605   c-2.244,0-4.247,1.403-5.015,3.512L250.955,504.84c-1.26,3.462,1.285,7.16,4.969,7.161c0.025,0,0.051,0,0.076,0   c6.056,0,12.059-0.226,18.009-0.639C271.807,510.156,270.617,507.432,271.56,504.84z"></path><path style="fill:#4987CE;" d="M20.606,256.001c0-108.555,67.572-201.315,162.945-238.545c-0.117-3.355-3.464-6.029-7.006-4.874   C74.059,46.012,0.001,142.353,0.001,256.001c0,119.22,81.502,219.396,191.827,247.874c2.674,0.69,5.438-0.742,6.383-3.337   l0.258-0.709C95.301,466.798,20.606,370.131,20.606,256.001z"></path><path style="fill:#4987CE;" d="M199.746,144.198h20.605c-3.704,0-6.281-3.681-5.015-7.161L263.873,3.641   c0.623-1.712,2.068-2.963,3.798-3.365C263.801,0.102,259.913,0,256.001,0c-2.651,0-5.29,0.047-7.921,0.131   c-2.169,0.069-4.07,1.47-4.812,3.509l-48.536,133.396C193.465,140.517,196.043,144.198,199.746,144.198z"></path>
</g><path style="fill:#579ADD;" d="M368.852,181.216l-53.197,145.959c-1.269,3.481,1.309,7.164,5.014,7.164h29.406  c2.243,0,4.246-1.402,5.014-3.509l53.196-145.959c1.269-3.481-1.309-7.164-5.014-7.164h-29.405  C371.623,177.707,369.619,179.109,368.852,181.216z"></path><path style="fill:#4987CE;" d="M336.281,327.175l53.197-145.959c0.768-2.107,2.771-3.509,5.014-3.509h-20.626  c-2.242,0-4.246,1.402-5.014,3.509l-53.197,145.959c-1.269,3.481,1.309,7.164,5.014,7.164h20.626  C337.589,334.338,335.012,330.656,336.281,327.175z"></path></svg></span>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-9"><span class="u-icon u-icon-circle u-icon-9"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.001 512.001" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9e57"></use></svg><svg class="u-svg-content" viewBox="0 0 512.001 512.001" x="0px" y="0px" id="svg-9e57" style="enable-background:new 0 0 512.001 512.001;"><path style="fill:#579ADD;" d="M214.592,225.828c19.399,0,32.613,13.401,32.613,31.869v47.546c0,1.232-0.999,2.231-2.231,2.231  h-17.589c-1.232,0-2.231-0.999-2.231-2.231v-43.461c0-10.619-9.441-16.965-18.564-16.965c-11.805,0-18.182,8.741-18.182,16.965  v43.461c0,1.232-0.999,2.231-2.231,2.231h-17.584c-1.232,0-2.231-0.999-2.231-2.231v-75.837c0-1.232,0.999-2.231,2.231-2.231h17.588  c1.232,0,2.231,0.999,2.231,2.232l-0.004,9.274l0.004-0.004l-0.004,0.017C194.833,230.114,205.347,225.828,214.592,225.828"></path><g><path style="fill:#4987CE;" d="M236.487,305.244v-43.461c0-10.619-9.441-16.965-18.564-16.965c-2.105,0-4.029,0.289-5.784,0.792   c7.037,1.996,13.016,7.725,13.016,16.173v43.461c0,1.232,0.999,2.231,2.231,2.231h11.333   C237.486,307.475,236.487,306.476,236.487,305.244z"></path><path style="fill:#4987CE;" d="M177.695,305.244v-75.837c0-1.232,0.999-2.231,2.231-2.231h-11.333   c-1.232,0-2.231,0.999-2.231,2.231v75.837c0,1.232,0.999,2.231,2.231,2.231h11.333   C178.694,307.475,177.695,306.476,177.695,305.244z"></path>
</g><path style="fill:#579ADD;" d="M405.483,227.179h20.292c1.588,0,2.667,1.612,2.063,3.08l-31.202,75.811  c-0.344,0.836-1.159,1.382-2.063,1.382h-21.174c-0.904,0-1.719-0.546-2.063-1.382l-31.202-75.811  c-0.604-1.468,0.475-3.08,2.063-3.08h20.297c0.938,0,1.775,0.586,2.096,1.467l17.303,47.479c0.713,1.956,3.479,1.956,4.192,0  l17.303-47.479C403.708,227.765,404.545,227.179,405.483,227.179z"></path><path style="fill:#4987CE;" d="M382.668,306.07l-31.202-75.811c-0.604-1.468,0.475-3.08,2.063-3.08h-11.333  c-1.588,0-2.667,1.612-2.063,3.08l31.202,75.811c0.344,0.836,1.159,1.382,2.063,1.382h11.333  C383.827,307.452,383.012,306.906,382.668,306.07z"></path><path style="fill:#579ADD;" d="M158.165,259.658c-1.406-8.011-4.604-15.158-9.353-20.681c-7.407-8.602-18.369-13.153-31.717-13.153  c-24.245,0-42.527,17.886-42.527,41.51c0,24.237,18.325,41.506,44.957,41.506c13.772,0,27.829-6.024,35.524-13.448  c0.99-0.955,0.919-2.557-0.172-3.396l-10.659-8.194c-0.775-0.596-1.854-0.618-2.65-0.049c-8.476,6.057-13.667,7.54-21.717,7.54  c-5.928,0-10.855-1.433-14.73-4.023c-1.479-0.989-1.249-3.236,0.395-3.918l51.299-21.281  C157.768,261.675,158.344,260.674,158.165,259.658z M132.308,255.548l-33.411,13.861c-1.445,0.599-3.042-0.44-3.091-2.003  c-0.213-6.698,1.76-12.05,4.729-16.037c3.755-5.042,9.736-8.002,16.96-8.002c6.986,0,12.49,3.508,15.836,8.907  C134.064,253.457,133.594,255.015,132.308,255.548z"></path><path style="fill:#4987CE;" d="M85.901,267.334c0-21.813,15.591-38.721,37.066-41.188c-1.903-0.206-3.856-0.322-5.872-0.322  c-24.245,0-42.527,17.886-42.527,41.51c0,24.237,18.325,41.506,44.957,41.506c1.807,0,3.618-0.109,5.419-0.306  C101.555,306.164,85.901,289.73,85.901,267.334z"></path><path style="fill:#579ADD;" d="M72.467,289.459v15.785c0,1.232-0.999,2.231-2.231,2.231H2.231c-1.232,0-2.231-0.999-2.231-2.231  v-99.852c0-1.232,0.999-2.231,2.231-2.231h17.888c1.232,0,2.231,0.999,2.231,2.231v79.606c0,1.232,0.999,2.231,2.231,2.231h45.655  C71.468,287.228,72.467,288.227,72.467,289.459z"></path><path style="fill:#4987CE;" d="M11.333,305.244v-99.852c0-1.232,0.999-2.231,2.231-2.231H2.231c-1.232,0-2.231,0.999-2.231,2.231  v99.852c0,1.232,0.999,2.231,2.231,2.231h11.333C12.332,307.474,11.333,306.476,11.333,305.244z"></path><path style="fill:#579ADD;" d="M468.995,225.824c-24.28,0-43.305,18.23-43.305,41.501c0,23.537,18.895,41.501,43.01,41.501  c24.28,0,43.301-18.234,43.301-41.501C512,243.789,493.11,225.824,468.995,225.824z M468.995,289.932  c-12.079,0-21.55-9.932-21.55-22.607c0-13.275,8.941-22.607,21.255-22.607c12.084,0,21.551,9.932,21.551,22.607  C490.25,280.344,481.313,289.932,468.995,289.932z"></path><g><path style="fill:#4987CE;" d="M474.735,289.165c1.781,0.485,3.647,0.767,5.592,0.767c12.318,0,21.255-9.589,21.255-22.607   c0-12.675-9.467-22.607-21.55-22.607c-2.028,0-3.953,0.276-5.774,0.758c9.3,2.515,15.991,11.201,15.991,21.848   C490.25,278.213,483.987,286.678,474.735,289.165z"></path><path style="fill:#4987CE;" d="M437.022,267.326c0-21.426,16.132-38.566,37.64-41.152c-1.852-0.223-3.741-0.35-5.667-0.35   c-24.28,0-43.305,18.23-43.305,41.501c0,23.537,18.895,41.501,43.01,41.501c1.925,0,3.813-0.127,5.665-0.35   C453.023,305.909,437.022,288.982,437.022,267.326z"></path>
</g><path style="fill:#579ADD;" d="M299.234,225.824c-24.285,0-43.305,18.23-43.305,41.501c0,23.537,18.89,41.501,43.005,41.501  c24.28,0,43.305-18.234,43.305-41.501C342.239,243.789,323.344,225.824,299.234,225.824z M299.234,289.932  c-12.084,0-21.55-9.932-21.55-22.607c0-13.275,8.937-22.607,21.251-22.607c12.084,0,21.55,9.932,21.55,22.607  C320.484,280.344,311.547,289.932,299.234,289.932z"></path><g><path style="fill:#4987CE;" d="M267.261,267.326c0-21.426,16.129-38.566,37.639-41.152c-1.852-0.223-3.74-0.35-5.666-0.35   c-24.284,0-43.305,18.23-43.305,41.501c0,23.537,18.89,41.501,43.005,41.501c1.925,0,3.813-0.127,5.665-0.35   C283.258,305.909,267.261,288.982,267.261,267.326z"></path><path style="fill:#4987CE;" d="M304.973,289.165c1.781,0.485,3.648,0.767,5.594,0.767c12.314,0,21.251-9.589,21.251-22.607   c0-12.675-9.467-22.607-21.55-22.607c-2.028,0-3.953,0.276-5.773,0.758C325.732,251.221,325.703,283.59,304.973,289.165z"></path>
</g></svg></span>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-10"><span class="u-icon u-icon-circle u-icon-10"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.001 512.001" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-5709"></use></svg><svg class="u-svg-content" viewBox="0 0 512.001 512.001" x="0px" y="0px" id="svg-5709" style="enable-background:new 0 0 512.001 512.001;"><polygon style="fill:#579ADD;" points="412.901,276.858 451.136,276.858 451.136,309.068 374.438,309.068 374.438,198.928   412.901,198.928 "></polygon><rect x="374.437" y="198.928" style="fill:#4987CE;" width="20.605" height="110.139"></rect><g><path style="fill:#579ADD;" d="M325.955,275.368v-74.99c0-0.801-0.649-1.45-1.45-1.45h-35.531c-0.801,0-1.45,0.649-1.45,1.45   v36.054c0,0.445-0.204,0.866-0.555,1.141l-51.563,40.488c-0.526,0.413-1.266,0.413-1.792,0l-7.81-6.138   c-0.739-0.581-0.739-1.7,0-2.28l50.055-39.347c0.739-0.581,0.739-1.699,0-2.28l-19.08-15.004c-0.526-0.414-1.267-0.414-1.793,0   l-51.167,40.236c-0.526,0.414-1.268,0.414-1.794-0.001l-7.792-6.136c-0.738-0.581-0.737-1.699,0.001-2.279l50.051-39.361   c0.738-0.581,0.738-1.699,0-2.28l-19.08-15.004c-0.526-0.414-1.266-0.414-1.792,0l-55.437,43.567   c-0.735,0.578-1.831,0.325-2.21-0.53c-7.517-16.936-25.804-32.296-50.915-32.296H66.9c-0.801,0-1.45,0.649-1.45,1.45v107.214   c0,0.801,0.649,1.45,1.45,1.45h47.95c22.598,0,42.209-13.198,50.928-32.315c0.386-0.846,1.475-1.092,2.205-0.517l55.429,43.593   c0.526,0.414,1.267,0.414,1.793,0l59.972-47.176c0.951-0.748,2.347-0.071,2.347,1.14v33.852c0,0.801,0.649,1.45,1.45,1.45h73.792   c0.801,0,1.45-0.649,1.45-1.45v-29.35c0-0.801-0.649-1.45-1.45-1.45h-35.361C326.604,276.818,325.955,276.169,325.955,275.368z    M110.788,277.401h-6.905c-0.801,0-1.45-0.649-1.45-1.45v-43.946c0-0.801,0.649-1.45,1.45-1.45h7.128   c13.974,0,23.868,8.441,23.868,23.416C134.88,270.29,123.774,277.401,110.788,277.401z"></path><path style="fill:#579ADD;" d="M255.991,0C114.622,0,0.003,114.612,0.003,255.988c0,141.395,114.619,256.013,255.988,256.013   c141.395,0,256.007-114.619,256.007-256.013C511.997,114.612,397.386,0,255.991,0 M255.991,484.288   c-126.085,0-228.302-102.21-228.302-228.302c0-126.085,102.217-228.308,228.302-228.308c126.105,0,228.321,102.223,228.321,228.308   C484.312,382.078,382.096,484.288,255.991,484.288"></path>
</g><g><path style="fill:#4987CE;" d="M86.055,307.592V200.379c0-0.801,0.649-1.45,1.45-1.45H66.9c-0.801,0-1.45,0.649-1.45,1.45v107.214   c0,0.801,0.649,1.45,1.45,1.45h20.605C86.704,309.042,86.055,308.393,86.055,307.592z"></path><path style="fill:#4987CE;" d="M20.608,255.988c0-137.923,109.095-250.354,245.686-255.764C262.875,0.089,259.444,0,255.991,0   C114.622,0,0.003,114.612,0.003,255.988c0,141.395,114.619,256.013,255.988,256.013c3.452,0,6.884-0.089,10.303-0.224   C129.703,506.367,20.608,393.929,20.608,255.988z"></path><path style="fill:#4987CE;" d="M231.836,314.586l2.773-2.181c-44.328-34.862-33.932-26.647-51.531-40.667   c-1.433-1.142-2.138-2.984-1.786-4.782c1.416-7.218,2.076-16.266,0.207-26.137c-0.343-1.814,0.335-3.672,1.783-4.817   c20.432-16.165,9.855-7.831,51.324-40.421l-3.396-2.67l-6.007-4.724c-0.526-0.414-1.266-0.414-1.793,0l-55.437,43.567   c-0.739,0.58-1.833,0.322-2.21-0.529c0.003,0.007,9.206,22.277,0.013,45.504c0.393-0.861,1.489-1.079,2.205-0.517   c2.749,2.162,1.969,1.548,4.885,3.841l0,0c7.185,5.651,46.034,36.203,50.545,39.751c0.526,0.414,1.267,0.414,1.793,0   L231.836,314.586z"></path><path style="fill:#4987CE;" d="M223.893,253.578l42.292-33.17l-9.406-7.397c-0.33-0.26-0.742-0.337-1.135-0.271l-51.826,40.508   c0.025,0.02,0.051,0.04,0.076,0.06C209.748,257.99,217.994,258.203,223.893,253.578z"></path><path style="fill:#4987CE;" d="M308.09,307.618c0-14.399,0-96.125,0-107.24c0-0.801,0.649-1.45,1.45-1.45h-20.605   c-0.801,0-1.45,0.649-1.45,1.45c0,59.427,0-21.752,0,36.944l-52.079,40.739l0,0c5.442,5.063,13.761,5.406,19.602,0.809   l29.86-23.498c1.062-0.834,2.618-0.077,2.618,1.273c0,1.187,0,51.993,0,50.973c0,0.801,0.649,1.45,1.45,1.45h20.605   C308.739,309.068,308.09,308.419,308.09,307.618z"></path>
</g></svg></span>
              </div>
            </div>
          </div>
        </div>
        <h2 class="u-align-center-xs u-custom-font u-font-montserrat u-hidden-lg u-hidden-md u-hidden-xl u-text u-text-default-lg u-text-default-md u-text-default-sm u-text-default-xl u-text-1">ALL BRANDS AVAILABLE</h2>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-0ea2"><div class="u-align-left u-clearfix u-sheet u-sheet-1"></div></footer>
    
  </body>
</html>