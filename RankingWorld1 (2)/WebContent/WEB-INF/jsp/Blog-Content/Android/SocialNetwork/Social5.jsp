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
    background: linear-gradient(#256EB8,#00CCFF); /* Standard syntax (must be last) */
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
      <h4 style="color: #008AB8;font-size: xx-large;font-family: cursive;">LinkedIn</h4>
      <p id="bd1">The free app version of networking site LinkedIn lets you connect with professionals from anywhere. Sync your device's calendar with your LinkedIn profile information to get info about the people who are in your meetings, and view and save recommended jobs with a few taps. Plus, this professional networking tool is a great way to look for a job or candidates for a job opening.</p>
      <img alt="not found" src="images/linkedin.jpg">
      <br><br>
      <h4 style="font-family: cursive;color: #19A3FF;font-size: xx-large;">Twitter</h4>
      <p id="bd2">Twitter's official app lets you stay on top of your tweets from your phone. Besides that, it offers some unique features that aren't found in third-party apps. For example, you can set specific push notifications for individual accounts so you'll never miss an important bit of news.</p>
      <img alt="not found" src="images/twitter.gif">
     <ul class="paginate pag3 clearfix">
        <li class="single">Page 5 of 5</li>
        <li><a href="social3.htm">prev</a></li>
        <li><a href="social.htm">1</a></li>
        <li><a href="social2.htm">2</a></li>
         <li><a href="social3.htm">3</a></li>
         <li><a href="index-4.htm">4</a></li>
        <li class="current">5</li>
        
        <li><a href="social.htm">next</a></li>
      </ul>
    </div><!-- @end #content -->
  </div><!-- @end #w -->
  </div>
</body>
</html>