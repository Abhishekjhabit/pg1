<!doctype html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Custom CSS3 Pagination Links - Design Shack Demo #2</title>
  <meta name="author" content="Jake Rocheleau">
  <link rel="shortcut icon" href="http://designshack.net/favicon.ico">
  <link rel="icon" href="http://designshack.net/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="css/stylesandroid.css">
</head>
<style>
#grad1 {
    background: linear-gradient(#3030FF,#5959FF); /* Standard syntax (must be last) */
}
h1 {
 font: bold italic 2em/1em "Times New Roman", "MS Serif", "New York", serif,larger;
 margin: 0;
 padding: 0;
 color: #FF7519;
 border-top: solid black medium;
 border-bottom: dotted black thin;
 width: 650px;
 }
</style>

<body>
    <div id="grad1">  
  
  <div id="w">
    <div id="content">
      <h1>Top ten android apps in Social category</h1>
      <h4 style="color: navy;font-size: xx-large;font-family: cursive;">Facebook</h4>
      <p id="bd1">The leading social network has a standard app, but this takes things a step further, replacing your homescreen with Facebook's familiar news feed, so you can see what your friends are up to as soon as you pick up your phone. It may be a bit invasive for some, but it's still worth a look if you just love the 'Book.</p>
      <img alt="not found" src="images/facebook.jpg">
      <br><br>
      <h4 style="font-size: xx-large;font-family: cursive;color: navy;">Facebook Messenger</h4>
      <p id="bd2">This Facebook add-on lets you chat with friends while using other apps, using floating "chat heads" you can move around the screen. You can also integrate your SMS and Facebook conversations on some devices, with support for others promised soon.</p>
      <img alt="not found" src="images/fbmessenger.jpg">
      
      <ul class="paginate pag3 clearfix">
        <li class="single">Page 2 of 5</li>
        <li><a href="social.htm">prev</a></li>
        <li><a href="social.htm">1</a></li>
        <li class="current">2</li>
         <li><a href="social3.htm">3</a></li>
        <li><a href="index-4.htm">4</a></li>
        <li><a href="index-5.htm">5</a></li>
        <li><a href="social3.htm">next</a></li>
      </ul>
    </div><!-- @end #content -->
  </div><!-- @end #w -->
  </div>
</body>
</html>