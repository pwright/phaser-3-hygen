---
to: "<%if (template !== 'basic') {%><%= path %>/index.html<%}%>"
---
<!DOCTYPE html>
<html>
  <head>
    <title><%= name %></title>
    <style>
      body {
        margin: 0;
      }
    </style>
  </head>
  <body>
    <div id="game"></div>
  </body>
</html>
