﻿<!DOCTYPE HTML>

<head>

    <title>BITET</title>
    <meta name="keywords" content="create from keywords">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
<!-- Google Fonts -->
    
    <link href='http://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>

<!-- CSS Files -->

    <link rel="stylesheet" type="text/css" media="screen" href="style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="menu/css/simple_menu.css">
    
  
<!-- Contact Form -->    
    
    <link href="contact_form/css/style.css" media="screen" rel="stylesheet" type="text/css"/>
    <link href="contact_form/css/uniform.css" media="screen" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="contact_form/js/jquery.tools.js"></script>
    <script type="text/javascript" src="contact_form/js/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="contact_form/js/main.js"></script>
    


<!-- JS Files -->

	<script src="js/jquery.tools.min.js" type="text/javascript"></script>
        
    <script type="text/javascript">
        $(function() {
        $("#prod_nav ul").tabs("#panes > div", {effect: 'fade', fadeOutSpeed: 400});
    });
    </script>
    
    <script type="text/javascript">
            $(document).ready(function(){
            $(".pane-list li").click(function(){
            window.location=$(this).find("a").attr("href");return false;
        });
    
    }); //close doc ready
    </script>

</head>

<body>

    <div class="header">
    
    <div id="site_title"><a href="index_guest.jsp"><img src="img/logo.png" /></a></div>

    <!-- Main Menu -->
    
    <ol id="menu">
             <li class="active_menu_item"><a href="index_guest.jsp">Home</a>
        
              <!-- sub menu -->
              <ol>  
                <li><a href="nivo.html">Nivo Slider</a></li>
                <li><a href="ei_slider.html">EI Slider</a></li>
                <li><a href="fullscreen_gallery.html">Fullscreen Slider</a></li>
                <li><a href="image_frontpage.html">Static Image</a></li>
              </ol>
              </li><!-- END sub menu -->
        
                
               
		<li><a href="login.jsp">Login</a></li>
    </ol>
    
    
    </div><!-- END header -->


    <div id="container">
   


<!-- tab panes -->

<div id="prod_wrapper">

    <div id="panes">
    
    <div>
    <img src="img/demo/1.jpg" alt="demo" />				
    <h2>Welcome to BITET Research <%=session.getAttribute("username")%></h2>
        <p>This website will help you to manage proile information, leave management, know your performance and creating references.
    </p>
   
    </div>
    
        
    <div>
    <img src="img/demo/2.jpg" alt="demo" />	
    <h2>Meet Our Team</h2>
    <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam.
    </p>
    <p style="text-align:right; margin-right: 16px"><a href="#" class="button">More Info</a> <a href="#" class="button">Buy Now</a></p>	
    </div>
        
    <div>   
    <img src="img/demo/3.jpg" alt="demo" />
    <h2>Mauris elementum</h2>
    <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam.
    </p>
    <p style="text-align:right; margin-right: 16px"><a href="#" class="button">More Info</a> <a href="#" class="button">Buy Now</a></p>			
    </div>
    
    <div>   
    <img src="img/demo/4.jpg" alt="demo" />
    <h2>Nam tempor nibh</h2>
    <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam.
    </p>
    <p style="text-align:right; margin-right: 16px"><a href="#" class="button">More Info</a> <a href="#" class="button">Buy Now</a></p>			
    </div>
    
    <div>   
    <img src="img/demo/5.jpg" alt="demo" />
    <h2>Supercar</h2>
    <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam.
    </p>
    <p style="text-align:right; margin-right: 16px"><a href="#" class="button">More Info</a> <a href="#" class="button">Buy Now</a></p>			
    </div>
    
    </div> 

<!-- END tab panes -->


<br clear="all" />


<!-- navigator -->

<div id="prod_nav">
    <ul>
      <li><a href="#1"> <img src="img/demo/1.jpg" width="160" alt="demo" /><strong>Professional Research</strong></a></li>
      <li><a href="#2"><img src="img/demo/2.jpg" width="160" alt="demo" /><strong>Industry Analysis</strong> </a></li>
      <li><a href="#3"><img src="img/demo/3.jpg" width="160" alt="demo" /><strong>Market Dynamics</strong> </a></li>
      <li><a href="#4"><img src="img/demo/4.jpg" width="160" alt="demo" /><strong>SEO & SMM</strong> </a></li>
      <li><a href="#5"><img src="img/demo/5.jpg" width="160" alt="demo" /><strong>Market Research</strong> </a></li>
    </ul>

</div><!-- END navigator -->



</div><!-- END prod wrapper -->

    <div style="clear:both"></div>
    
    
    
    <div class="one-third">
      <h2>Business Solutions</h2>
      <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida.</p>
      <p style="text-align:right; margin-right: 15px"><a href="#" class="button_small">Find out more</a></p>
    </div>
    
    <div class="one-third">
       <h2>Become a Partner</h2>
      <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida.</p>
      <p style="text-align:right; margin-right: 15px"><a href="#" class="button_small">Contact Us Today</a></p>
    </div>
    
    <div class="one-third last">
      <h2>Latest News</h2>
      <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida.</p>
      <p style="text-align:right; margin-right: 15px"><a href="#" class="button_small">Read Article</a></p>
    </div>
    
    
        <div style="clear:both"></div>
        <div class="box_highlight" style="margin-top:40px"><h2 style="text-align:center">Market Research goes here!</h2></div>
    
    

    
    



    <div style="clear:both; height: 20px"></div>
    </div>

    <!-- END container -->


    <div id="footer">

    <!-- First Column -->

    <div class="one-fourth">
        <h3>Useful Links</h3>
            <ul class="footer_links">
                <li><a href="#">Lorem Ipsum</a></li>
                <li><a href="#">Ellem Ciet</a></li>
                <li><a href="#">Currivitas</a></li>
                <li><a href="#">Salim Aritu</a></li>
            </ul>
    </div>
    
    <!-- Second Column -->
    
    <div class="one-fourth">
        <h3>Terms</h3>
            <ul class="footer_links">
                <li><a href="#">Lorem Ipsum</a></li>
                <li><a href="#">Ellem Ciet</a></li>
                <li><a href="#">Currivitas</a></li>
                <li><a href="#">Salim Aritu</a></li>
            </ul>
    </div>
    
    <!-- Third Column -->
    
    <div class="one-fourth">
        <h3>Information</h3>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sit amet enim id dui tincidunt vestibulum rhoncus a felis.
        
        <div id="social_icons">
        Theme by <a href="http://www.csstemplateheaven.com">CssTemplateHeaven</a><br /> Designed by © NR Bommela
        </div>
        
    </div>
    
    <!-- Fourth Column -->
    
    <div class="one-fourth last">
        <h3>Socialize</h3>
            <img src="img/icon_fb.png" alt="Facebook">
            <img src="img/icon_twitter.png" alt="Facebook">
            <img src="img/icon_in.png" alt="Facebook">
    </div>

    <div style="clear:both"></div>
    
    </div> <!-- END footer -->

</body>
</html>