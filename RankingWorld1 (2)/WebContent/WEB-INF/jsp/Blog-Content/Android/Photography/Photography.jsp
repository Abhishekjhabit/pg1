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

<style>
#grad1 {
    background: linear-gradient(#339933,#27AC7D); /* Standard syntax (must be last) */
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
</head>
<body >
<div id="grad1">

  <!--  <div style="background-color: orange;" height:100%/> -->
  <!--  <div style="background-image: url("text.jpg");"/>  -->
  <div id="w">
    <div id="content">
      <h1>Top ten android apps in Social category</h1>
      <h4 style="color: green;font-size: xx-large;font-family: cursive;">Whatsapp</h4>
      <p id="bd1">There's a reason Facebook acquired WhatsApp for $19 billion earlier this year, and that's because WhatsApp is exactly what every messaging app should aim to be. It's designed well, free to use (even for international messaging), has a thriving user base, and lets you send texts, voice messages, pictures, and videos.</p>
      <img alt="not found" src="images/whatsapp.jpg">
      <br><br>
      <h4 style="font-family: cursive;color: #27AC7D;font-size: xx-large;">Snapchat</h4>
      <p id="bd2">Snapchat allows users send picture messages to friends in real-time. Photos automatically delete after a maximum of 10 seconds, which makes the free app often used for sending silly (or risque) shots. Be careful, though: Users can take screenshots of your shots, but you'll receive a notification if a screen has been grabbed.</p>
      <img alt="not found" src="images/snapchat.png">
      <ul class="paginate pag3 clearfix">
        <li class="single">Page 1 of 5</li>
         <li class="current">1</li>
        <li><a href="social2.htm">2</a></li>
         <li><a href="social3.htm">3</a></li>
         <li><a href="index-4.htm">4</a></li>
        <li><a href="index-5.htm">5</a></li>
        <li><a href="social2.htm">next</a></li>
      </ul>
    </div><!-- @end #content -->
  </div><!-- @end #w -->
  </div>
  </div>
</body>
</html>