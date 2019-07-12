<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>后台管理 - 登录</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>

    <script>
        function validateLogin() {


            var data = $("#form").serialize();
            $.post(
                "${pageContext.request.contextPath}/admin/login", data, function (data) {
                    if (data == 'success') {
                        location.href = "${pageContext.request.contextPath}/admin/index";
                    } else {
                        $("#span").text("用户名或密码错误");
                    }
                }
            );
            return false;
        };
    </script>

</head>

<body class="gray-bg" background="img/background-image.png"
      style="background-repeat: no-repeat; background-attachment: fixed">

<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>

        <h2 style="color: whitesmoke; margin-top: 150px; font-size: 40px">千锋教育</h2>

        <form class="m-t" role="form" id="form">
            <div class="form-group">
                <input type="email" name="email" class="form-control" placeholder="用户名" required="">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="密码" required="">
            </div>
            <input type="submit" class="btn btn-primary block full-width m-b" onclick="return validateLogin()"
                   value="登 录"/>


            <%-- <p class="text-muted text-center">
                 <a href="${pageContext.request.contextPath}/admin/register" style="font-size: 16px; color: dodgerblue">注册一个新账号</a>
             </p>--%>
            <span id="span" style="font-size: 20px; color: red"></span>

        </form>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
<script type="${pageContext.request.contextPath}/text/javascript" src="http://tajs.qq.com/stats?sId=9051096"
        charset="UTF-8"></script>
</body>
</html>
