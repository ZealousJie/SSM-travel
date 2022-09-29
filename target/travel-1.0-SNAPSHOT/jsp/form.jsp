<%--
  Created by IntelliJ IDEA.
  User: WinUser
  Date: 2022/3/23
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/sub" method="post">
    <input type="text" name="list[0].id"><br/>
    <input type="text" name="list[0].email"><br/>
    <input type="password" name="list[0].password"><br/>
    <input type="submit" value="提交">
</form>

</body>
</html>
