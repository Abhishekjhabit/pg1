<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tiled Menu Slider Demo - Jssor Slider, Carousel, Slideshow with Javascript Source Code</title>
    <style>
        .appicon01
        {   
            background: url(img/appicon/01.png);
            
            
        }
        .appicon02
        {
            background: url(img/appicon/02.png);
            
        }
        .appicon03
        {
            background: url(img/appicon/03.png);
            
        }
        .appicon01, .appicon02, .appicon03
        {
        	display: block;
            position: absolute;
            width: 160px;
            height: 150px;
        }
        .appicon01:hover, .appicon02:hover, .appicon03:hover
        {
            text-decoration: none;
        }
        .appiconcb
        {
        	
            position: absolute;
            left: 0px;
            bottom: 10px;
            width: 160px;
            height: 25px;
        }
        .appiconc
        {  
            position: absolute;
            left: 0px;
            bottom: 10px;
        	text-align: center;
            width: 160px;
            height: 25px;
            line-height:25px;
            font-family: Verdana, Arial;
        	color: red;    /* image text color */
        	font-size:14px;
        	text-decoration:none;
        }
        .appicon01:hover .appiconcb, .appicon02:hover .appiconcb, .appicon03:hover .appiconcb
        {
            background-color: #fff;  
            filter: alpha(opacity=30);
            opacity: .3;
        }
        .appicon01:hover .appiconc, .appicon02:hover .appiconc, .appicon03:hover .appiconc
        {
        	color: #000;
        }
    </style>
</head>
<body >
    <div style="background-image: url(img/back.jpg);height:100%;"/>
    
    <!-- it works the same with all jquery version from 1.x to 2.x -->
   <!--  <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script> -->
    <!-- use jssor.slider.mini.js (40KB) instead for release -->
    <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="js/jssor.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script>

        jQuery(document).ready(function ($) {
            var options = {
                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                                  //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $SpacingX: 25                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth) {
                    var sliderWidth = parentWidth;

                    //keep the slider width no more than 800
                    sliderWidth = Math.min(sliderWidth, 800);

                    jssor_slider1.$ScaleWidth(sliderWidth);
                }
                else
                    window.setTimeout(ScaleSlider, 30);
            }
            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>
    <!-- Jssor Slider Begin -->
    <!-- To move inline styles to css file/block, please specify a class name for each element. --> 
    <div id="slider1_container" style="position: relative;top: 0px; left: 0px; width: 800px; height: 500px; overflow: hidden; ">
        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                background-color: red; top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
            <div style="position: absolute; display: block; background: url(img/loading.gif) no-repeat center center;
                top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
        </div>
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 90px; width: 800px; height: 380px;
            overflow: hidden;">
            <div>
              
                <a class=appicon01 style="left: 160px; top: 0px; background-position:-160px 0px;" href="social.htm">
                    <div class=appiconcb></div>
                    <div class=appiconc>Social Network</div>
                </a>
                <a class=appicon01 style="left: 320px; top: 0px; background-position:-320px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Music and Audio</div>
                </a>
                <a class=appicon01 style="left: 480px; top: 0px; background-position:-480px 0px;" href="Photography.htm">
                    <div class=appiconcb></div>
                    <div class=appiconc>Photography</div>
                </a>
               
                <a class=appicon01 style="left: 160px; top: 160px; background-position:-160px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Entertainment</div>
                </a>
                <a class=appicon01 style="left: 320px; top: 160px; background-position:-320px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Education</div>
                </a>
                <a class=appicon01 style="left: 480px; top: 160px; background-position:-480px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Games</div>
                </a>
                
            </div>
                            
            <div>
                
                <a class=appicon02 style="left: 160px; top: 0px; background-position:-160px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>News and Magazine</div>
                </a>
                <a class=appicon02 style="left: 320px; top: 0px; background-position:-320px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Travel</div>
                </a>
                <a class=appicon02 style="left: 480px; top: 0px; background-position:-480px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Music and video</div>
                </a>
                
                <a class=appicon02 style="left: 160px; top: 160px; background-position:-160px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Fitness</div>
                </a>
                <a class=appicon02 style="left: 320px; top: 160px; background-position:-320px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Dating</div>
                </a>
                <a class=appicon02 style="left: 480px; top: 160px; background-position:-480px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Productivity</div>
                </a>
                
            </div>
                            
            <div>
                
                <a class=appicon03 style="left: 160px; top: 0px; background-position:-160px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Menu Item 22</div>
                </a>
                <a class=appicon03 style="left: 320px; top: 0px; background-position:-320px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Menu Item 23</div>
                </a>
                <a class=appicon03 style="left: 480px; top: 0px; background-position:-480px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Menu Item 24</div>
                </a>
               
                <a class=appicon03 style="left: 160px; top: 160px; background-position:-160px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Menu Item 27</div>
                </a>
                <a class=appicon03 style="left: 320px; top: 160px; background-position:-320px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Menu Item 28</div>
                </a>
                <a class=appicon03 style="left: 480px; top: 160px; background-position:-480px -160px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Menu Item 29</div>
                </a>
                
            </div>
        </div>
        
        <!--#region Bullet Navigator Skin Begin -->
        <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
        <style>
            /* jssor slider bullet navigator skin 18 css */
            /*
            .jssorb18 div           (normal)
            .jssorb18 div:hover     (normal mouseover)
            .jssorb18 .av           (active)
            .jssorb18 .av:hover     (active mouseover)
            .jssorb18 .dn           (mousedown)
            */
            .jssorb18 {
                position: absolute;
            }
            .jssorb18 div, .jssorb18 div:hover, .jssorb18 .av {
                position: absolute;
                /* size of bullet elment */
                
                width: 24px;
                height: 24px;
                text-align: center;
                line-height: 24px;
                font-size: 16px;
                background: url(img/b18.png) no-repeat;
                overflow: hidden;
                cursor: pointer;
            }
            .jssorb18 div { background-position: -3px -3px; }
            .jssorb18 div:hover, .jssorb18 .av:hover { background-position: -33px -3px; }
            .jssorb18 .av { background-position: -63px -3px; }
            .jssorb18 .dn, .jssorb18 .dn:hover { background-position: -93px -3px; }
            .jssorb18 .n  { display: none; color: #000; }
            .jssorb18 div:hover .n, .jssorb18 .av .n, .jssorb18 .av:hover .n, .jssorb18 .dn .n { display: block; }
        </style>
        <!-- bullet navigator container -->
        <div u="navigator" class="jssorb18" style="bottom: 0px;top:400px; right: 6px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype">
                <div u="numbertemplate" class=n></div>
            </div>
        </div>
        <!--#endregion Bullet Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">Image Slider</a>
    </div>
    </div>
    <!-- Jssor Slider End -->
</body>
</html>