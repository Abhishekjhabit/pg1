<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Content Slider - Jssor Slider, Carousel, Slideshow with Javascript Source Code</title>
</head>
<body style="padding: 0; margin: 0; font-family: Arial, Verdana; background-color: #fff;">
    <!-- it works the same with all jquery version from 1.x to 2.x -->
  <!--   <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script> -->
    <!-- use jssor.slider.mini.js (40KB) instead for release -->
    <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="js/jssor.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideDuration: 800,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                $DragOrientation: 1,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $ArrowNavigatorOptions: {                       //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                },

                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always

                    $ActionMode: 1,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $AutoCenter: 0,                                 //[Optional] Auto center thumbnail items in the thumbnail navigator container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 3
                    $Lanes: 1,                                      //[Optional] Specify lanes to arrange thumbnails, default value is 1
                    $SpacingX: 3,                                   //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
                    $SpacingY: 3,                                   //[Optional] Vertical space between each thumbnail in pixel, default value is 0
                    $DisplayPieces: 9,                              //[Optional] Number of pieces to display, default value is 1
                    $ParkingPosition: 260,                          //[Optional] The offset position to park thumbnail
                    $Orientation: 1,                                //[Optional] Orientation to arrange thumbnails, 1 horizental, 2 vertical, default value is 1
                    $DisableDrag: false                            //[Optional] Disable drag or not, default value is false
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var bodyWidth = document.body.clientWidth;
                if (bodyWidth)
                    jssor_slider1.$ScaleWidth(Math.min(bodyWidth, 980));
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
    <div style="position: relative; width: 100%; background-color: #003399; overflow: hidden;">
        <div style="position: relative;  width: 6000px; text-align: center; margin-left: -2500px;">
            <!-- Jssor Slider Begin -->
            <div id="slider1_container" style="position: relative; margin: 0 auto;
                top: 0px; left: 0px; width: 980px; height: 400px; background: url(img/phone/main_bg.jpg) top center no-repeat;">
                <!-- Loading Screen -->
                <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                        top: 0px; left: 0px; width: 100%; height: 100%;">
                    </div>
                    <div style="position: absolute; display: block; background: url(img/loading.gif) no-repeat center center;
                        top: 0px; left: 0px; width: 100%; height: 100%;">
                    </div>
                </div>
                <!-- Slides Container -->
                <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 980px;
                    height: 400px; overflow: hidden;">
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <br />
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 45px;
                                color: #FFD119;">Asus Zenfone 2 ZE551ML</span>
                            <br />
                         
                          <!--   <span style="display: block; line-height: 1.1em; font-size: 2.5em; color: #FFFFFF;">
                                iT Solutions & Services
                            </span> -->
                           
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                           Rank  : 1<br>
                           PRICE : Rs  19,999 <bR>  
OS : Android OS, v5.0(Lollipop)<br>
CPU : 2.3 GHz 64-bit Intel Atom Z3580 Quad Core Processor<br>
RAM : 4 GB RAM
SCREEN : 5.5 inches, IPS capacitive touchscreen, Corning Gorilla Glass 3<br>
DISPLAY : 1920 x 1080 pixels, 403 ppi pixel density<br>
SIM : Dual SIM (GSM + LTE)<br>
CAMERA : Primary Camera: 13 MP, Secondary Camera: 5 MP, Flash: Dual-LED Flash<br>
MEMORY : Internal Storage 32 GB, microSD Expandable upto 64 GB<br>
BATTERY : Non-removable Li-Po 3000 mAh battery<br>
OTHERS : 3G, 4G, Bluetooth, WiFi, GPS, NFC<br>

                              
                              
                            </span>
                            <br />
                            <br />
                          <!--   <a href="http://www.jssor.com">
                                <img src="img/phone/find-out-more-bt.png" border="0" alt="auction slider" width="215"
                                     height="50" />
                            </a> -->
                        </div>
                        <img src="img/phone/asus.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/asust.jpg" />
                    </div>
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 45px;
                                color: red">One Plus One</span>
                            <br />
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                           Rank : 2<br> 
                           PRICE : 16 GB - Rs 18,998.00,64 GB - Rs 21,999.00<br>
OS : Android OS, v4.4.4 (KitKat), Upgradable to Android Lollipop<br>
CPU : Quad-core 2.5 GHz Qualcomm MSM8974AC Snapdragon 801<br>
RAM : 3 GB RAM<br>
SCREEN : 5.5 inches, LTPS LCD capacitive touchscreen<br>
DISPLAY : 1080 x 1920 pixels, 401 ppi pixel density<br>
SIM : Single Sim (Micro-SIM)<br>
CAMERA : Rear Camera: 13 MP, Front Camera: 5 MP, LED Flash: Dual-LED flash<bR>
MEMORY : Internal Storage 16/64 GB, microsd unexpandable<br>
BATTERY : Non-removable Li-Po 3100 mAh battery<br>
OTHERS : 4G, 3G, Bluetooth, WiFi, GPS<br>

                                                                                    
                            </span>
      
                        </div>
                        <img src="img/phone/1plus.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/1plust.jpg" />
                    </div>
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 52px;
                                color: #FFFFFF;">Xiaomi Mi4</span>
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                             Rank : 3<br>
                             PRICE : 16 GB - Rs 14,999,64 GB - Rs 19,999<br>
OS : Android v4.4.4 (KitKat), Planned upgrade to Android v5.0 Lollipop<bR>
CPU : Quad-core 2.5 GHz Qualcomm MSM8974AC Snapdragon 801 Processor<br>
RAM : 3 GB RAM<br>
SCREEN : 5.0 inches, IPS LCD capacitive touchscreen<br>
DISPLAY : 1080 x 1920 pixels, 441 ppi pixel density<br>
SIM : Single Sim (Micro-SIM)<br>
CAMERA : Rear Camera: 13 MP, Front Camera: 8 MP, LED Flash: Yes<br>
MEMORY : Internal Storage 16/64 GB, microsd unexpandable<br>
BATTERY : Non-removable Li-Ion 3080 mAh battery<br>
OTHERS : 3G, Bluetooth, WiFi, GPS<br>



                            </span>
                           
                        </div>
                        <img src="img/phone/mi.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/mit.jpg" /> 
                    </div>
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <br />
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 52px;
                                color: #FF5959;">HTC Desire 820s</span>
                            <br />
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                            Rank : 4<br>
                            PRICE : Rs  19,899 @flipcart,Rs  19053  @amazon<br>  
OS : Android OS, v4.4.4 (KitKat)<br>
CPU : Octa-core 1.7 GHz Mediatek MT6752 Processor<br>
RAM : 2 GB RAM<br>
SCREEN : 5.5 inches, Capacitive touchscreen<br>
DISPLAY : 720 x 1280 pixels, 267 ppi pixel density<br>
SIM : Dual Sim (GSM + LTE)<br>
CAMERA : Primary Camera: 13 MP, Secondary Camera: 8 MP, Flash: YES<br>
MEMORY : Internal Storage 16 GB, microSD expandable upto 32 GB<br>
BATTERY : Non-removable Li-Po 2600 mAh battery<br>
OTHERS : 4G, 3G, Bluetooth, WiFi, GPS<br>


                            </span>
                        </div>
                        <img src="img/phone/htc.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/htct.jpg" />
                    </div>
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 52px;
                                color: #FFFFFF;">Huawei Honor 6</span>
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                             Rank : 5<br>
                             PRICE : Rs.  16,999<br>
OS : Android OS, v4.4.2 (KitKat)<br>
CPU : Octa Core, 1.7 GHz Processor<br>
RAM : 3 GB RAM<br>
SCREEN : 5.0 inches, IPS LCD capacitive touchscreen<br>
DISPLAY : 1080 x 1920 pixels, 445 ppi pixel density<br>
SIM : Single Sim, GSM<br>
CAMERA : Rear Camera: 13 MP, Front Camera: 5 MP, LED Flash: Dual-LED flash<br>
MEMORY : Internal Storage 16 GB, microsd expandable upto 64 GB<br>
BATTERY : Non-removable Li-Po 3100 mAh battery<br>
OTHERS : 4G, 3G, Bluetooth, WiFi, GPS<br>

                            </span>
                     
                        </div>
                        <img src="img/phone/hono.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/honot.jpg" />
                    </div>
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <br />
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 52px;
                                color: #FFD633;">Lenovo Vibe X2</span>
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                            Rank : 6<br>
                            PRICE : Rs.  16,550<br>  
OS : Android v4.4 (KitKat) OS<br>
CPU : Octa-core 2 GHz MediaTek 6595M Processor<br>
RAM : 2 GB RAM<br>
SCREEN : 5.0 inches, IPS LCD capacitive touchscreen<br>
DISPLAY : 1080 x 1920 pixels, 441 ppi pixel density<br>
SIM : Dual SIM<br>
CAMERA : Rear Camera: 13 MP, Front Camera: 5 MP, LED Flash: Yes<br>
MEMORY : Internal Storage 32 GB, microsd unexpandable<br>
BATTERY : Non-removable Li-Po 2300 mAh battery<br>
OTHERS : 4G, 3G, Bluetooth, WiFi, GPS<br>


                            </span>
                           
                        </div>
                        <img src="img/phone/len.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/lent.jpg" />
                    </div>
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 45px;
                                color: #19D1A3;">Samsung Galaxy E7</span>
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                            Rank : 7<br>
                            PRICE : Rs  17,999 @filpkart
OS : Android OS, v4.4.4 (KitKat)<br>
CPU : Qualcomm MSM8916 Snapdragon 410 Processor<br>
RAM : 2 GB RAM<br>
SCREEN : 5.5 inches, Super AMOLED capacitive touchscreen<br>
DISPLAY : 720 x 1280 pixels, 267 ppi pixel density<br>
SIM : Dual SIM (2nd Sim slot also used as SD card slot)<br>
CAMERA : Rear Camera: 13 MP, Front Camera: 5 MP, LED Flash: Yes<br>
MEMORY : Internal Storage 16 GB, microsd expandable upto 64 GB<br>
BATTERY : Non-removable Li-Ion 2950 mAh battery<br>
OTHERS : 3G, Bluetooth, WiFi, GPS<br>


                        </div>
                        <img src="img/phone/sam.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/samt.jpg" />
                    </div>
         <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <br />
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 52px;
                                color: #FFD633;">ZTE Nubia Z9 Mini</span>
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                            Rank : 8<br>
                            PRICE : Rs 16,999.00<bR>  
OS : Android OS, v5.0.2 (Lollipop), Nubia UI 2.8<br>
CPU : 64-bit Octa-core 1.5GHz Snapdragon 615 MSM8939 Processor<br>
RAM : 2 GB RAM<br>
SCREEN : 5.0 inches, Capacitive touchscreen with Corning Gorilla Glass 3<br>
DISPLAY : 1080 x 1920 pixels, 441 ppi pixel density<br>
SIM : Dual SIM<br>
CAMERA : Rear Camera: 16 MP, Front Camera: 8 MP, LED Flash: Yes<br>
MEMORY : Internal Storage 16 GB, microSD expandable upto 128 GB<br>
BATTERY : Non-removable Li-Ion 2900 mAh battery<br>
OTHERS : 4G, 3G, Bluetooth, WiFi, GPS<br>



                            </span>
                           
                        </div>
                          <img src="img/phone/zte.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/ztet.jpg" />
                    </div>
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 49px;
                                color: orange;">Google Nexus 5</span>
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.1em; color: #FFFFFF;">
                            Rank : 9<br>
                           PRICE : Rs.19,200.00  @amazon<br>  
OS : Android OS, v4.4 (KitKat), upgradable to v4.4.4 (KitKat)<br>
CPU : Quad-core 2.3 GHz Krait 400, Qualcomm MSM8974 Snapdragon 800<br>
RAM : 2 GB RAM<br>
SCREEN : 4.95 inches, True HD IPS+ capacitive touchscreen with Corning Gorilla Glass 3<br>
DISPLAY : 1080 x 1920 pixels, 445 ppi pixel density<br>
SIM : Micro-SIM<br>
CAMERA : 8 MP Primary Camera, Secondary Camera: 1.3 MP<bR>
MEMORY : Internal Storage 16 GB, microsd unexpandable<br>
BATTERY : Non-removable Li-Po 2300 mAh battery<br>
OTHERS : 4G, 3G, NFC, Bluetooth, WiFi, GPS<br>



                        </div>
                          <img src="img/phone/nexus.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/nexust.jpg" />
                    </div>
                    <div>
                        <div style="position: absolute; width: 480px; height: 300px; top: 10px; left: 10px;
                            text-align: left; line-height: 1.8em; font-size: 12px;">
                            <span style="display: block; line-height: 1.2em; text-transform: uppercase; font-size: 49px;
                                color: pink;">Sony Xperia C3</span>
                            <br />
                            <span style="display: block; line-height: 1.2em; font-size: 1.2em; color: #FFFFFF;">
                            Rank : 10<br>
                           PRICE : Rs.  16998<br>
OS : Android OS, v4.4.2 (KitKat), Upgradable to Android 5.0 OS<br>
CPU : Quad-core 1.2 GHz Qualcomm MSM8926 Snapdragon 400 Processor<br>
RAM : 1 GB RAM<br>
SCREEN : 5.5 inches, IPS LCD capacitive touchscreen<br>
DISPLAY : 720 x 1280 pixels, 267 ppi pixel density<br>
SIM : Dual SIM<br>
CAMERA : Rear Camera: 8 MP, Front Camera: 5 MP, LED Flash: Flash for both front and rear cameras<br>
MEMORY : Internal Storage 8 GB, microsd expandable upto 32 GB<br>
BATTERY : Li-Ion 2500 mAh battery<br>
OTHERS : 3G, NFC, Bluetooth, WiFi, GPS<br>



                        </div>
                            <img src="img/phone/sony.png" style="position: absolute; top: 23px; left: 480px; width: 500px; height: 300px;" />
                        <img u="thumb" src="img/phone/sonyt.jpg" />
                
                </div>
                </div>
               
                
                
                
                <!--#region Arrow Navigator Skin Begin -->
                <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
                <style>
                    /* jssor slider arrow navigator skin 07 css */
                    /*
                    .jssora07l                  (normal)
                    .jssora07r                  (normal)
                    .jssora07l:hover            (normal mouseover)
                    .jssora07r:hover            (normal mouseover)
                    .jssora07l.jssora07ldn      (mousedown)
                    .jssora07r.jssora07rdn      (mousedown)
                    */
                    .jssora07l, .jssora07r {
                        display: block;
                        position: absolute;
                        /* size of arrow element */
                        width: 50px;
                        height: 50px;
                        cursor: pointer;
                        background: url(img/a07.png) no-repeat;
                        overflow: hidden;
                    }
                    .jssora07l { background-position: -5px -35px; }
                    .jssora07r { background-position: -65px -35px; }
                    .jssora07l:hover { background-position: -125px -35px; }
                    .jssora07r:hover { background-position: -185px -35px; }
                    .jssora07l.jssora07ldn { background-position: -245px -35px; }
                    .jssora07r.jssora07rdn { background-position: -305px -35px; }
                </style>
                <!-- Arrow Left -->
                <span u="arrowleft" class="jssora07l" style="top: 123px; left: 8px;">
                </span>
                <!-- Arrow Right -->
                <span u="arrowright" class="jssora07r" style="top: 123px; right: 8px;">
                </span>
                <!--#endregion Arrow Navigator Skin End -->
                
            <!--#region Thumbnail Navigator Skin Begin -->
            <!-- Help: http://www.jssor.com/development/slider-with-thumbnail-navigator-jquery.html -->
            <style>
                /* jssor slider thumbnail navigator skin 04 css */
                /*
                .jssort04 .p            (normal)
                .jssort04 .p:hover      (normal mouseover)
                .jssort04 .pav          (active)
                .jssort04 .pav:hover    (active mouseover)
                .jssort04 .pdn          (mousedown)
                */

                .jssort04 {
                    position: absolute;
                    /* size of thumbnail navigator container */
                    width: 600px;
                    height: 60px;
                }

                    .jssort04 .p {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 62px;
                        height: 32px;
                    }

                    .jssort04 .t {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        border: none;
                    }

                    .jssort04 .w, .jssort04 .pav:hover .w {
                        position: absolute;
                        width: 60px;
                        height: 30px;
                        border: #0099FF 1px solid;
                        box-sizing: content-box;
                    }

                    .jssort04 .pdn .w, .jssort04 .pav .w {
                        border-style: dashed;
                    }

                    .jssort04 .c {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 62px;
                        height: 32px;
                        background-color: #000;
                        filter: alpha(opacity=45);
                        opacity: .45;
                        transition: opacity .6s;
                        -moz-transition: opacity .6s;
                        -webkit-transition: opacity .6s;
                        -o-transition: opacity .6s;
                    }

                    .jssort04 .p:hover .c, .jssort04 .pav .c {
                        filter: alpha(opacity=0);
                        opacity: 0;
                    }

                    .jssort04 .p:hover .c {
                        transition: none;
                        -moz-transition: none;
                        -webkit-transition: none;
                        -o-transition: none;
                    }

                    * html .jssort04 .w {
                        width /**/: 62px;
                        height /**/: 32px;
                    }
            </style>
            <!-- thumbnail navigator container -->
            <div u="thumbnavigator" class="jssort04" style="right: 0px; bottom: 0px;">
                <!-- Thumbnail Item Skin Begin -->
                <div u="slides" style="bottom: 25px; right: 30px; cursor: default;">
                    <div u="prototype" class="p">
                        <div class=w><div u="thumbnailtemplate" class="t"></div></div>
                        <div class=c></div>
                    </div>
                </div>
                <!-- Thumbnail Item Skin End -->
            </div>
            <!--#endregion Thumbnail Navigator Skin End -->
                <a style="display: none" href="http://www.jssor.com">Bootstrap Slider</a>
            </div>
            <!-- Jssor Slider End -->
        </div>
    </div>
</body>
</html>
