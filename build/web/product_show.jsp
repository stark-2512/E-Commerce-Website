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
        String id=request.getParameter("id");
        String p_n="";
        String p="";
        String i="";
        String d="";
        ps=co.prepareStatement("select * from products where p_id=?");
        ps.setInt(1,Integer.parseInt(id));
        rs=ps.executeQuery();
        while(rs.next())
        {
            p_n=rs.getString(2);
            p=rs.getString(3);
            d=rs.getString(5);
            i=rs.getString(6);
        }
        rs.close();
        ps.close();
    %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>product_show</title>
    <link rel="stylesheet" href="nicepage_ps.css" media="screen">
<link rel="stylesheet" href="product_show.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery_ps.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage_ps.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.21.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "seller_add_item"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="product_show">
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
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" style="padding: 10px 20px;" href="Page-1.html">mobiles</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" style="padding: 10px 20px;" href="Page-1.html">laptops</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-custom-color-3 u-border-custom-color-1 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-radius-50 u-text-active-custom-color-3 u-text-custom-color-1 u-text-hover-custom-color-3" style="padding: 10px 20px;" href="Page-1.html">product_show</a>
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
        </nav><span class="u-border-2 u-border-custom-color-1 u-icon u-icon-circle u-spacing-12 u-text-custom-color-1 u-icon-1" data-href="Home" data-animation-name="rotateIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 208.955 208.955" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8f6d"></use></svg><svg class="u-svg-content" viewBox="0 0 208.955 208.955" x="0px" y="0px" id="svg-8f6d" style="enable-background:new 0 0 208.955 208.955;"><path d="M190.85,200.227L178.135,58.626c-0.347-3.867-3.588-6.829-7.47-6.829h-26.221V39.971c0-22.04-17.93-39.971-39.969-39.971  C82.437,0,64.509,17.931,64.509,39.971v11.826H38.27c-3.882,0-7.123,2.962-7.47,6.829L18.035,200.784  c-0.188,2.098,0.514,4.177,1.935,5.731s3.43,2.439,5.535,2.439h157.926c0.006,0,0.014,0,0.02,0c4.143,0,7.5-3.358,7.5-7.5  C190.95,201.037,190.916,200.626,190.85,200.227z M79.509,39.971c0-13.769,11.2-24.971,24.967-24.971  c13.768,0,24.969,11.202,24.969,24.971v11.826H79.509V39.971z M33.709,193.955L45.127,66.797h19.382v13.412  c0,4.142,3.357,7.5,7.5,7.5c4.143,0,7.5-3.358,7.5-7.5V66.797h49.936v13.412c0,4.142,3.357,7.5,7.5,7.5c4.143,0,7.5-3.358,7.5-7.5  V66.797h19.364l11.418,127.158H33.709z"></path></svg></span>
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
    <section class="u-clearfix u-custom-color-1 u-section-1" id="sec-0957">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h3 class="u-align-center-lg u-align-center-sm u-align-center-xl u-align-center-xs u-align-left-md u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-1"><%=p_n%></h3>
        <a href="add_to_cart.jsp?id=<%=id%>" class="u-border-none u-btn u-btn-round u-button-style u-custom-color-2 u-custom-font u-font-montserrat u-hover-custom-color-3 u-radius-50 u-text-custom-color-1 u-text-hover-custom-color-2 u-btn-1" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 456.029 456.029" x="0px" y="0px" style="width: 1em; height: 1em;"><g><g><path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248    c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z"></path>
</g>
</g><g><g><path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48    C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064    c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4    C457.728,97.71,450.56,86.958,439.296,84.91z"></path>
</g>
</g><g><g><path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296    c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z"></path>
</g>
</g></svg><img></span>&nbsp;Add to Cart
        </a>
        <a href="add_to_cart.jsp?id=<%=id%>" class="u-border-none u-btn u-btn-round u-button-style u-custom-color-2 u-custom-font u-font-montserrat u-hover-custom-color-3 u-radius-50 u-text-custom-color-1 u-text-hover-custom-color-2 u-btn-2" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><span class="u-icon u-icon-2"><svg class="u-svg-content" viewBox="0 0 435.104 435.104" x="0px" y="0px" style="width: 1em; height: 1em;"><g><g><g><circle cx="154.112" cy="377.684" r="52.736"></circle><path d="M323.072,324.436L323.072,324.436c-29.267-2.88-55.327,18.51-58.207,47.777c-2.88,29.267,18.51,55.327,47.777,58.207     c3.468,0.341,6.962,0.341,10.43,0c29.267-2.88,50.657-28.94,47.777-58.207C368.361,346.928,348.356,326.924,323.072,324.436z"></path><path d="M431.616,123.732c-2.62-3.923-7.059-6.239-11.776-6.144h-58.368v-1.024C361.476,54.637,311.278,4.432,249.351,4.428     C187.425,4.424,137.22,54.622,137.216,116.549c0,0.005,0,0.01,0,0.015v1.024h-43.52L78.848,50.004     C77.199,43.129,71.07,38.268,64,38.228H0v30.72h51.712l47.616,218.624c1.257,7.188,7.552,12.397,14.848,12.288h267.776     c7.07-0.041,13.198-4.901,14.848-11.776l37.888-151.552C435.799,132.019,434.654,127.248,431.616,123.732z M249.344,197.972     c-44.96,0-81.408-36.448-81.408-81.408s36.448-81.408,81.408-81.408s81.408,36.448,81.408,81.408     C330.473,161.408,294.188,197.692,249.344,197.972z"></path><path d="M237.056,118.1l-28.16-28.672l-22.016,21.504l38.912,39.424c2.836,2.894,6.7,4.55,10.752,4.608     c3.999,0.196,7.897-1.289,10.752-4.096l64.512-60.928l-20.992-22.528L237.056,118.1z"></path>
                
                </g>
</g>
</g></svg><img></span>&nbsp;Buy Now
        </a>
        <img class="u-align-center u-border-4 u-border-grey-75 u-image u-image-round u-image-1" src="images/<%=i%>" alt="" data-image-width="1280" data-image-height="960">
        <p class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-text u-text-2"><%=d%></p>
        <h3 class="u-align-center u-custom-font u-font-montserrat u-text u-text-default u-text-3"><%=p%></h3>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-0ea2"><div class="u-align-left u-clearfix u-sheet u-sheet-1"></div></footer>
    
  </body>
</html>