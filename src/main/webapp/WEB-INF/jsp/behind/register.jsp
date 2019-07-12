<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>千锋教育项目后台管理 - 注册</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/cssAndJs/images/icon/favicon.ico">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script>if (window.top !== window.self) {
        window.top.location = window.location;
    }</script>


    <script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
        });
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <style>
        .pwd {
            width: 40px;
            height: 20px;
            line-height: 14px;
            padding-top: 2px;
        }

        .pwd_f {
            color: #BBBBBB;
        }

        .pwd_c {
            background-color: #F3F3F3;
            border-top: 1px solid #D0D0D0;
            border-bottom: 1px solid #D0D0D0;
            border-left: 1px solid #D0D0D0;
        }

        .pwd_Weak_c {
            background-color: #FF4545;
            border-top: 1px solid #BB2B2B;
            border-bottom: 1px solid #BB2B2B;
            border-left: 1px solid #BB2B2B;
        }

        .pwd_Medium_c {
            background-color: #FFD35E;
            border-top: 1px solid #E9AE10;
            border-bottom: 1px solid #E9AE10;
            border-left: 1px solid #E9AE10;
        }

        .pwd_Strong_c {
            background-color: #3ABB1C;
            border-top: 1px solid #267A12;
            border-bottom: 1px solid #267A12;
            border-left: 1px solid #267A12;
        }

        .pwd_c_r {
            border-right: 1px solid #D0D0D0;
        }

        .pwd_Weak_c_r {
            border-right: 1px solid #BB2B2B;
        }

        .pwd_Medium_c_r {
            border-right: 1px solid #E9AE10;
        }

        .pwd_Strong_c_r {
            border-right: 1px solid #267A12;
        }
    </style>
</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">QF</h1>

        </div>
        <h3>欢迎注册</h3>
        <p>创建一个新账户</p>

        <form class="m-t" id="form123" role="form">
            <div class="form-group">
                <input type="email" id="regEmail" name="email" class="form-control" placeholder="请输入邮箱"
                       required=""><span id="emailMsg"></span>
            </div>
            <div class="form-group">
                <input type="password" id="regPsw" onKeyUp="CheckIntensity(this.value)" name="password"
                       class="form-control" placeholder="请输入密码" required="">
            </div>

            <%--验证密码强度--%>
            <div class="form-group">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr align="center">
                        <td id="pwd_Weak" class="pwd pwd_c">&nbsp;</td>
                        <td id="pwd_Medium" class="pwd pwd_c pwd_f">无</td>
                        <td id="pwd_Strong" class="pwd pwd_c pwd_c_r">&nbsp;</td>
                    </tr>
                </table>
            </div>

            <div class="form-group">
                <input type="password" id="regPswAgain" name="psw_again" class="form-control" placeholder="请再次输入密码"
                       required=""><span id="passMsg"></span>
            </div>
            <div class="form-group text-left">
                <div class="checkbox i-checks">
                    <label class="no-padding">
                        <input id="cb" type="checkbox" required><i></i> 我同意注册协议</label>
                </div>
            </div>
            <input type="submit" value="注册" class="btn btn-primary block full-width m-b"
                   onclick="return commitLogin()"/>


            <p class="text-muted text-center">
                <small>已经有账户了？</small>
                <a href="${pageContext.request.contextPath}/admin/afterLogin">点此登录</a>
            </p>

        </form>
    </div>
</div>

</body>
<script type="text/javascript">

    $("#regEmail").blur(function () {
        var emailVal = $("#regEmail").val();
        if (null != emailVal && "" != emailVal) {
            var params = {"email": emailVal};
            $.post("validateEmail", params, function (data) {
                if (data == "success") {
                    regIsCommitEmail = true;
                    $("#emailMsg").text("该邮箱可用").css("color", "green");
                } else {
                    regIsCommitEmail = false;
                    $("#emailMsg").text("该邮箱已注册，请直接登录").css("color", "red");
                }
            });
        }
    });


    $("#regPswAgain").blur(function () {
        var pass01 = $("#regPsw").val();
        var pass02 = $("#regPswAgain").val();
        if (null == pass01 || "" == pass01 || null == pass02 || "" == pass02) {
            $("#passMsg").text("密码不能为空").css("color", "red");
            regIsCommitPsw = false;
        } else {
            if (pass01 != pass02) {
                regIsCommitPsw = false;
                $("#passMsg").text("两次密码输入不一致，请重新输入").css("color", "red");
            } else {
                regIsCommitPsw = true;
                $("#passMsg").text("");
            }
        }
    });

    var regIsCommitEmail = false;
    var regIsCommitPsw = false;

    function commitLogin() {
        var checked = $("#cb").prop("checked");

        if (!checked) {
            alert("请同意注册协议！")
        }

        if (regIsCommitEmail && regIsCommitPsw && checked) {
            //用js提交表单
            $.ajax({
                url: "insertAdmin",
                data: $("#form123").serialize(),
                type: "POST",
                success: function (data) {
                    if (data == 'success') {
                        location.href = "${pageContext.request.contextPath}/admin/afterLogin";
                    } else {
                        alert("联系管理员");

                    }
                }
            });
            return false;
        } else {
            return false;
        }
    }

    function CheckIntensity(pwd) {
        var Mcolor, Wcolor, Scolor, Color_Html;
        var m = 0;
        var Modes = 0;
        for (i = 0; i < pwd.length; i++) {
            var charType = 0;
            var t = pwd.charCodeAt(i);
            if (t >= 48 && t <= 57) {
                charType = 1;
            } else if (t >= 65 && t <= 90) {
                charType = 2;
            } else if (t >= 97 && t <= 122) {
                charType = 4;
            } else {
                charType = 4;
            }
            Modes |= charType;
        }
        for (i = 0; i < 4; i++) {
            if (Modes & 1) {
                m++;
            }
            Modes >>>= 1;
        }
        if (pwd.length <= 4) {
            m = 1;
        }
        if (pwd.length <= 0) {
            m = 0;
        }
        switch (m) {
            case 1 :
                Wcolor = "pwd pwd_Weak_c";
                Mcolor = "pwd pwd_c";
                Scolor = "pwd pwd_c pwd_c_r";
                Color_Html = "弱";
                break;
            case 2 :
                Wcolor = "pwd pwd_Medium_c";
                Mcolor = "pwd pwd_Medium_c";
                Scolor = "pwd pwd_c pwd_c_r";
                Color_Html = "中";
                break;
            case 3 :
                Wcolor = "pwd pwd_Strong_c";
                Mcolor = "pwd pwd_Strong_c";
                Scolor = "pwd pwd_Strong_c pwd_Strong_c_r";
                Color_Html = "强";
                break;
            default :
                Wcolor = "pwd pwd_c";
                Mcolor = "pwd pwd_c pwd_f";
                Scolor = "pwd pwd_c pwd_c_r";
                Color_Html = "无";
                break;
        }
        document.getElementById('pwd_Weak').className = Wcolor;
        document.getElementById('pwd_Medium').className = Mcolor;
        document.getElementById('pwd_Strong').className = Scolor;
        document.getElementById('pwd_Medium').innerHTML = Color_Html;
    }

</script>


</html>
