<%--
  Created by IntelliJ IDEA.
  User: Eclipse
  Date: 2018/5/17
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <script type="text/javascript" src="<%request.getContextPath();%>js/jquery.js"></script>
    <script type="text/javascript" src="<%request.getContextPath();%>js/jquery-qrcode.js"></script>
  </head>
  <body>
  <div id="qrcode"></div>
  <script>
      jQuery('#qrcode').qrcode("cn.bing.com");
  </script>
  </body>
</html>