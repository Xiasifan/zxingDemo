<%--
  Created by IntelliJ IDEA.
  User: Eclipse
  Date: 2018/5/17
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%request.getContextPath();%>js/jquery.js"></script>
    <script type="text/javascript" src="<%request.getContextPath();%>js/jquery-qrcode.js"></script>
</head>
<body>
<div id="qrcode"></div>
<script>
    jQuery("#qrcode").qrcode("www.baidu.com");
</script>
</body>
</html>
