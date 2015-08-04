<!doctype html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Custom CSS3 Pagination Links - Design Shack Demo</title>
  <meta name="author" content="Jake Rocheleau">
  <link rel="shortcut icon" href="http://designshack.net/favicon.ico">
  <link rel="icon" href="http://designshack.net/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="css/stylesandroid.css">
</head>

<style>
#grad1 {
    background: linear-gradient(#FF9147,#16708E); /* Standard syntax (must be last) */
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
      <h4 style="font-size: xx-large;font-family: cursive;color: red;">Secret</h4>
      <p id="bd1">Secret lets you and your friends speak freely with each other and the world, but you'll never know whose secret you're reading. People post and comment anonymously, and you can now easily ask "Yes or No" questions that people can respond to. To help make the text-based posts more beautiful, Secret now gives you access to Flickr's photo library for background images.</p>
      <img alt="not found" src="images/secret.jpg">
      <br><br>
      <h4 style="font-family: cursive;font-size: xx-large;color: #008AB8;">Instagram</h4>
      <p id="bd2">Amp up your photos with Instagram, which applies one of 19 filters to your smartphone or tablet pics. Take shots from the free app or pull in an existing photo from your Camera Roll. A basic news feed shows the photos your friends have recently posted, and an Explore feature lets you search by user or hashtag and displays the most popular photos in real-time.</p>
      <img alt="not found" src="images/instagram.jpg">
       <ul class="paginate pag3 clearfix">
        <li class="single">Page 4 of 5</li>
        <li><a href="social3.htm">prev</a></li>
        <li><a href="social.htm">1</a></li>
        <li><a href="social2.htm">2</a></li>
         <li><a href="social3.htm">3</a></li>
        <li class="current">4</li>
        <li><a href="index-5.htm">5</a></li>
        <li><a href="index-5.htm">next</a></li>
      </ul>
    </div><!-- @end #content -->
  </div><!-- @end #w -->
  </div>
</body>
</html>