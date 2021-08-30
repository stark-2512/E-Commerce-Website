<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="?&nbsp;Add Product">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>add_product</title>
    <link rel="stylesheet" href="nicepage_ap.css" media="screen">
<link rel="stylesheet" href="add_product.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery_ap.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage_ap.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.21.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "seller_add_item"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="add_product">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body">
    <section class="u-clearfix u-custom-color-1 u-section-1" id="sec-1b28">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-default u-text-1" data-animation-name="bounceIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 512 512" style="width: 1em; height: 1em;"><path d="m488 488-72-368h-320l-72 368z" fill="#ffc431"></path><path d="m216 488h-192l2.44-12.45 69.56-355.55h48l69.56 355.55z" fill="#ffa100"></path><path d="m216 488h-12.5l-83.5-69.59-83.5 69.59h-12.5l2.44-12.45 85.56-71.3v-84.25h16v84.25l85.56 71.3z" fill="#f78e00"></path><path d="m112 120h16v144h-16z" fill="#f78e00"></path><path d="m112 280h16v16h-16z" fill="#f78e00"></path><g fill="#ffe28f"><circle cx="328" cy="272" r="32"></circle><path d="m264 336h40v16h-40z"></path><path d="m320 336h80v16h-80z"></path><path d="m248 368h96v16h-96z"></path><path d="m360 368h64v16h-64z"></path>
</g><path d="m312 120h-16v-48a40 40 0 0 0 -80 0v48h-16v-48a56 56 0 0 1 112 0z" fill="#ffcc4d"></path><path d="m352 184h-16v-112a40 40 0 0 0 -80 0v112h-16v-112a56 56 0 0 1 112 0z" fill="#ffe28f"></path><path d="m224 176h48v16h-48z" fill="#ffa100"></path><path d="m320 176h48v16h-48z" fill="#ffa100"></path></svg><img></span>
          <span style="font-weight: 700;">&nbsp;Add Product</span>
          <br>
        </h2>
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <h3 class="u-custom-font u-font-montserrat u-text u-text-custom-color-2 u-text-default u-text-2"> &nbsp;Product Details</h3>
        <div class="u-form u-form-1">
          <form action="add_product_ctrl.jsp" method="POST" enctype="multipart/form-data" class="u-clearfix u-form-custom-backend u-form-spacing-22 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 24px;" redirect="true">
            <input type="hidden" id="siteId" name="siteId" value="94703336">
            <input type="hidden" id="pageId" name="pageId" value="1637119147">
            <div class="u-form-group u-form-name u-form-group-1">
              <label for="name-149c" class="u-custom-font u-font-montserrat u-label u-text-custom-color-2">Product Name</label>
              <input type="text" id="name-149c" name="product_name" class="u-border-2 u-border-grey-30 u-custom-font u-font-montserrat u-input u-input-rectangle u-radius-50 u-text-custom-color-2 u-white" required="">
            </div>
            <div class="u-form-group u-form-name u-form-group-2">
              <label for="name-bc2f" class="u-custom-font u-font-montserrat u-label u-text-custom-color-2">Price</label>
              <input type="text" id="name-bc2f" name="price" class="u-border-2 u-border-grey-30 u-custom-font u-font-montserrat u-input u-input-rectangle u-radius-50 u-text-custom-color-2 u-white" required="">
            </div>
            <div class="u-form-group u-form-message u-form-group-3">
              <label for="message-879a" class="u-custom-font u-font-montserrat u-label u-text-custom-color-2">Describe your Product</label>
              <textarea rows="4" cols="50" id="message-879a" name="description" class="u-border-2 u-border-grey-30 u-custom-font u-font-montserrat u-input u-input-rectangle u-radius-50 u-text-custom-color-2 u-white" required=""></textarea>
            </div>
			  <div align="center">
				  &nbsp; Images of Product :   &nbsp;
                                    <input type="file" name="image">
				  
		    </div>
			  
            <div class="u-align-center u-form-group u-form-submit"><br>
              <a href="#" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-2 u-custom-font u-font-montserrat u-hover-custom-color-3 u-radius-50 u-text-custom-color-1 u-text-hover-custom-color-2 u-btn-1">Add Product</a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div>
      </div>
    </section>
    
    
    
    
  </body>
</html>