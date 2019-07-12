<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>讲师</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min862f.css?v=4.1.0" rel="stylesheet">


</head>

<body class="gray-bg">

<div class="container" style="margin-top: 60px">
    <header>
        <c:if test="${empty speaker.id}">
            <h2>添加成员</h2>
        </c:if>
        <c:if test="${not empty speaker.id}">
            <h2>修改成员信息</h2>
        </c:if>
    </header>
</div>


<div style="margin-top: 50px;">
    <form class="form-horizontal m-t" enctype="multipart/form-data" method="post"
          action="${pageContext.request.contextPath}/speaker/saveOrUpdate">
        <c:if test="${not empty speaker.id}">
            <input type="hidden" name="id" value="${speaker.id}"/>
        </c:if>
        <div class="form-group">
            <label class="col-sm-3 control-label">姓名</label>
            <div class="col-sm-6">
                <input id="cname" name="speakerName" value="${speaker.speakerName}" minlength="2" type="text"
                       class="form-control"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label">头像</label>
            <div class="col-sm-4">
                <input type="file" class="form-control" name="img_file" value=${speaker.imgUrl}/>
            </div>
            <span style="font-size: 20px">此框是必填项...</span>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label">微信</label>
            <div class="col-sm-4">
                <input type="file" class="form-control" name="wechat_img"
                       value=${speaker.wechat}/>
            </div>
            <span style="font-size: 20px">此框是必填项...</span>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label">QQ</label>
            <div class="col-sm-4">
                <input type="file" class="form-control" name="QQ_img" value=${speaker.QQ}/>
            </div>
            <span style="font-size: 20px">此框是必填项...</span>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label">讲师职称</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="speakerJob" value="${speaker.speakerJob}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label">讲师简介</label>
            <div class="col-sm-6">
                <textarea name="speakerDesc" class="form-control">${speaker.speakerDesc}</textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-4 col-sm-offset-3">
                <input class="btn btn-primary" type="submit" value="提交"/>
            </div>
        </div>
    </form>
</div>


<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
<script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.Jcrop.min.js"></script>
<script src="${pageContext.request.contextPath}/js/Jcrop_upload.js"></script>

<script>
    $(document).ready(function () {
        $("#loading-example-btn").click(function () {
            btn = $(this);
            simpleLoad(btn, true);
            simpleLoad(btn, false)
        })
    });

    function simpleLoad(btn, state) {
        if (state) {
            btn.children().addClass("fa-spin");
            btn.contents().last().replaceWith(" Loading")
        } else {
            setTimeout(function () {
                btn.children().removeClass("fa-spin");
                btn.contents().last().replaceWith(" Refresh")
            }, 2000)
        }
    };
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>




