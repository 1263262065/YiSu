<%--
  Created by IntelliJ IDEA.
  User: 杨奥博
  Date: 2021/3/14
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/login/style.css">
    <link href="${pageContext.request.contextPath }/statics/login/iconfont-embedded.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div>

    <form class="loginForm" action="${pageContext.request.contextPath }/login"  name="actionForm" id="actionForm"  method="post" >
    <div id="login">
        <div id="from">
            <h2>管理员登录</h2>

            <div class="txt">
                <i class="icon-font i-user-border"></i>
                <input  name="UserName" type="text" placeholder="UserName"/>
            </div >

            <div class="txt"><i class="icon-font i-view"></i><input name="PassWord" type="password" placeholder="PassWord"/></div>
            <div class=>
                <button class="btn"type="submit" id="signUp" onclick="login()">登录</button>
            </div>
            <div><button class="icon-font i-qq-new"></button><button class="icon-font i-weixin"></button></div>
        </div>

    </div>
    </form>
</div>
${error}

</body>
</html>
