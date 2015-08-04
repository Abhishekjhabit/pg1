<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Slide Down Box Menu with jQuery and CSS3</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Slide Down Box Menu with jQuery and CSS3" />
        <meta name="keywords" content="jquery, css3, sliding, box, menu, cube, navigation, portfolio, thumbnails"/>
		<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
         <link rel="stylesheet" href="css/stylesearch.css" type="text/css" media="screen"/>
        <style>
     
            *{
                margin:200;
                padding:0;
         
                /* background:#f9f9f9; */
            }
            			
			span.reference{
				position:fixed;
				left:0px;
				bottom:10px;
				font-size:12px;
			}
			span.reference a{
				color:#aaa;
				text-transform:uppercase;
				text-decoration:none;
				text-shadow:1px 1px 1px #000;
				margin-right:30px;
				/* margin-left:30px; */
			}
			span.reference a:hover{
				color:#ddd;
			}
			ul.sdt_menu{
				margin-top:40px;margin-bottom: 0px;
							}
			h1.title{
				text-indent:-9000px;
				/* background:transparent url(images/title.png) no-repeat top left; */
				width:633px;
				height:69px;
			}
		</style>
    </head>
    <body style="background:url(images/bg.jpg) no-repeat top left;background-size:3000px 250px;font-family:Arial;">
    
     
        <div class="menu">
            <div class="item">
                <a class="link icon_mail"></a>
                <div class="item_content">
                    <h2>Contact us</h2>
                    <p>
                        <a href="mailto:info@tympanus.net">eMail</a>
                        <a href="http://www.twitter.com/codrops/">Twitter</a>
                        <a href="http://www.facebook.com/pages/Codrops/159107397912">Facebook</a>
                    </p>
                </div>
            </div>
            <div class="item">
                <a class="link icon_help"></a>
                <div class="item_content">
                    <h2>Help</h2>
                    <p>
                        <a href="#">FAQ</a>
                        <a href="#">Live Support</a>
                        <a href="#">Tickets</a>
                    </p>
                </div>
            </div>
            <div class="item">
                <a class="link icon_find"></a>
                <div class="item_content">
                    <h2>Search</h2>
                    <p>
                        <input type="text"></input>
                        <a href="search.htm">Go</a>
                    </p>
                </div>
            </div>
            <div class="item">
                <a class="link icon_photos"></a>
                <div class="item_content">
                    <h2>Image</h2>
                    <p>
                        <a href="Gallery.htm">Gallery</a>
                        <a href="Developers.htm">Developers</a>
                    </p>
                </div>
            </div>
            <div class="item">
                <a href="Home.htm" class="link icon_home"></a>
                <div class="item_content">
                    <h2>Start from here</h2>
                    <p>
                        <a href="http://www.tympanus.net/">Services</a>
                        <a href="http://www.tympanus.net/">Portfolio</a>
                    </p>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script src="js/jquery-css-transform.js" type="text/javascript"></script>
        <script src="js/jquery-animate-css-rotate-scale.js" type="text/javascript"></script>
        <script>
            $('.item').hover(
                function(){
                    var $this = $(this);
                    expand($this);
                },
                function(){
                    var $this = $(this);
                    collapse($this);
                }
            );
            function expand($elem){
                var angle = 0;
                var t = setInterval(function () {
                    if(angle == 1440){
                        clearInterval(t);
                        return;
                    }
                    angle += 40;
                    $('.link',$elem).stop().animate({rotate: '+=-40deg'}, 0);
                },10);
                $elem.stop().animate({width:'268px'}, 1000)
                .find('.item_content').fadeIn(400,function(){
                    $(this).find('p').stop(true,true).fadeIn(600);
                });
            }
            function collapse($elem){
                var angle = 1440;
                var t = setInterval(function () {
                    if(angle == 0){
                        clearInterval(t);
                        return;
                    }
                    angle -= 40;
                    $('.link',$elem).stop().animate({rotate: '+=40deg'}, 0);
                },10);
                $elem.stop().animate({width:'52px'}, 1000)
                .find('.item_content').stop(true,true).fadeOut().find('p').stop(true,true).fadeOut();
            }
        </script>
    
    
    
    
    
    
    <!--- -----------------------Previous Code ----------------------------------------------->
		<div class="content">
			<h1 class="title">Ranking World</h1>
			<ul id="sdt_menu" class="sdt_menu">
				<li>
					<a href="Aboutus.htm">
						<img src="images/2.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">About Us</span>
							<span class="sdt_descr">Get to know Us</span>
						</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="images/1.png" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Mobile Apps</span>
							<span class="sdt_descr">Top Rated Apps</span>
						</span>
					</a>
					<div class="sdt_box">
							<a href="Android.htm">Android</a>
              

							<a href="IOS.htm">IOS</a>
							<a href="BlackBerry.htm">BlackBerry</a>
							<a href="Windows.htm">Windows</a>
					</div>
				</li>
				<li>
					<a href="#">
						<img src="images/3.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Smartphones</span>
							<span class="sdt_descr">Where ideas get born</span>
						</span>
					</a>
<div class="sdt_box">
							<a href="TenKSmartPhone.htm">Under 10k</a>
							<a href="TwentyKSmartPhone.htm">Under 20k</a>
							<a href="UnderThirtySP.htm">Under 30k</a>
							<a href="AboveThirtySP.htm">Above 30k</a>
					</div>

				</li>
				<li>
					<a href="#">
						<img src="images/4.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Colleges</span>
							<span class="sdt_descr">I Where ideas get born</span>
						</span>
					</a>
<div class="sdt_box">
						<a href="Engineer.htm">Engineering </a>
						<a href="Management.htm">Management</a>
						<a href="Medical.htm">Medical</a>
					</div>

				</li>
				<li>
					<a href="#">
						<img src="images/5.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Automobiles</span>
							<span class="sdt_descr">Ultimate Machines</span>
						</span>
					</a>
<div class="sdt_box">
						<a href="Bikes.htm">Bikes </a>
						<a href="Car.htm">Car</a>
						<a href="Bicycle.htm">Bicycle</a>
					</div>


				</li>
				<li>
					<a href="#">
						<img src="images/6.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Entertainment</span>
							<span class="sdt_descr">Enjoy yourself</span>
						</span>
					</a>
					<div class="sdt_box">
						<a href="Movies.htm">Movies</a>
						<a href="Songs.htm">Songs</a>
						<a href="NewsChannel.htm">News Channel</a>
					</div>
				</li>
			</ul>
		</div>
       

        <!-- The JavaScript -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function() {
				/**
				* for each menu element, on mouseenter, 
				* we enlarge the image, and show both sdt_active span and 
				* sdt_wrap span. If the element has a sub menu (sdt_box),
				* then we slide it - if the element is the last one in the menu
				* we slide it to the left, otherwise to the right
				*/
                $('#sdt_menu > li').bind('mouseenter',function(){
					var $elem = $(this);
					$elem.find('img')
						 .stop(true)
						 .animate({
							'width':'170px',
							'height':'170px',
							'left':'0px'
						 },400,'easeOutBack')
						 .andSelf()
						 .find('.sdt_wrap')
					     .stop(true)
						 .animate({'top':'140px'},500,'easeOutBack')
						 .andSelf()
						 .find('.sdt_active')
					     .stop(true)
						 .animate({'height':'170px'},300,function(){
						var $sub_menu = $elem.find('.sdt_box');
						if($sub_menu.length){
							var left = '170px';
							if($elem.parent().children().length == $elem.index()+1)
								left = '-170px';
							$sub_menu.show().animate({'left':left},200);
						}	
					});
				}).bind('mouseleave',function(){
					var $elem = $(this);
					var $sub_menu = $elem.find('.sdt_box');
					if($sub_menu.length)
						$sub_menu.hide().css('left','0px');
					
					$elem.find('.sdt_active')
						 .stop(true)
						 .animate({'height':'0px'},300)
						 .andSelf().find('img')
						 .stop(true)
						 .animate({
							'width':'0px',
							'height':'0px',
							'left':'85px'},400)
						 .andSelf()
						 .find('.sdt_wrap')
						 .stop(true)
						 .animate({'top':'25px'},500);
				});
            });
        </script>
    </body>
</html>