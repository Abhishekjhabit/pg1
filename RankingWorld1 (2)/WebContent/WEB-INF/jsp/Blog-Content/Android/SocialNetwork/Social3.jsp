<!doctype html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Custom CSS3 Pagination Links - Design Shack Demo #3</title>
  <meta name="author" content="Jake Rocheleau">
  <link rel="shortcut icon" href="http://designshack.net/favicon.ico">
  <link rel="icon" href="http://designshack.net/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="css/stylesandroid.css">
</head>
<style>
#grad1 {
    background: linear-gradient(#29A3CC,#27AC7D); /* Standard syntax (must be last) */
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
      <h4 style="font-size: xx-large;font-family: cursive;color: #009AFF;">FourSquare</h4>
      <p id="bd1">Foursquare is a location-based app that tells you what's nearby based on what others suggested. When you're at a location, you can check in and potentially score tips and deals, and with every check-in the app gets more personalized and gets better at recommending places it thinks you'll like. Search for what you're looking for or browse what's near you, then Foursquare gives you directions, hours, menus and photos so you can decide on a destination. Plus, become mayor of a location and get bragging rights over your friends.</p>
      <img alt="not found" src="images/foursquare.jpg">
      <br><br>
      <h4 style="font-family: cursive;color: #27AC7D;font-size: xx-large;">Vine</h4>
      <p id="bd2">Vine lets you splice together clips that play on a loop and share them with your friends. You can edit videos on the spot and post to Twitter and Facebook, and you can now import videos from your phone, too. The community also allows you to find, follow, and interact with other Vine users.</p>
      <img alt="not found" src="images/vine.jpg">
      
      <ul class="paginate pag3 clearfix">
        <li class="single">Page 3 of 5</li>
        <li><a href="social2.htm">prev</a></li>
        <li><a href="social.htm">1</a></li>
        <li><a href="social2.htm">2</a></li>
        <li class="current">3</li>
        <li><a href="index-4.htm">4</a></li>
        <li><a href="index-5.htm">5</a></li>
        <li><a href="index-4.htm">next</a></li>
      </ul>
    </div><!-- @end #content -->
  </div><!-- @end #w -->
  </div>
</body>
</html>