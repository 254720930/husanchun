<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台管理系统-HTML5后台管理系统</title>
    <link rel="icon" href="${pageContext.request.contextPath}/cssAndJs/images/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/cssAndJs/css/style.css"/>
    <script src="${pageContext.request.contextPath}/cssAndJs/javascript/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/cssAndJs/javascript/plug-ins/customScrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/cssAndJs/javascript/plug-ins/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/cssAndJs/javascript/plug-ins/layerUi/layer.js"></script>
    <script src="${pageContext.request.contextPath}/cssAndJs/editor/ueditor.config.js"></script>
    <script src="${pageContext.request.contextPath}/cssAndJs/editor/ueditor.all.js"></script>
    <script src="${pageContext.request.contextPath}/cssAndJs/javascript/plug-ins/pagination.js"></script>
    <script src="${pageContext.request.contextPath}/cssAndJs/javascript/public.js"></script>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/cssAndJs/images/icon/favicon.ico">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>


<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
<script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
<script src="${pageContext.request.contextPath}/js/plugins/layer/laydate/laydate.js"></script>


<body>


<main class="main-cont content mCustomScrollbar">

    <div class="page-wrap">

        <section class="page-hd">

            <c:if test="${empty project.id}">
                <header>
                    <h2 class="title">添加项目</h2>
                </header>
            </c:if>

            <c:if test="${not empty project.id}">
                <header>
                    <h2 class="title">修改项目</h2>
                </header>
            </c:if>
            <hr>
        </section>

        <form action="${pageContext.request.contextPath}/project/saveOrUpdate" method="post"
              enctype="multipart/form-data">
            <c:if test="${not empty project.id}">
                <input type="hidden" name="id" value="${project.id}"/>
            </c:if>
            <div class="form-group-col-2">
                <div class="form-label">项目标题：</div>
                <div class="form-cont">
                    <input type="text" name="projectName" placeholder="100%输入框..." class="form-control form-boxed"
                           value="${project.projectName}">
                </div>
            </div>
            <div class="form-group-col-2">
                <div class="form-label">前端地址：</div>
                <div class="form-cont">
                    <input type="url" name="projectBeforeUrl" value="${project.projectBeforeUrl}" placeholder="项目地址..."
                           class="form-control form-boxed">
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label">后端地址：</div>
                <div class="form-cont">
                    <input type="url" name="projectBehindUrl" value="${project.projectBehindUrl}" placeholder="项目地址..."
                           class="form-control form-boxed">
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label">所用技术：</div>
                <div class="form-cont">
                    <input type="text" placeholder="..." value="${project.skillType}" class="form-control form-boxed"
                           name="skillType">
                </div>
            </div>


            <div class="form-group-col-2">
                <div class="form-label">图片一：</div>
                <div class="form-cont">
                    <input type="file" placeholder="请输入图片url..." value="${project.imageOneUrl}"
                           class="form-control form-boxed"
                           name="image_OneUrl">
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label">图片二：</div>
                <div class="form-cont">
                    <input type="file" placeholder="请输入图片url..." value="${project.imageTwoUrl}"
                           class="form-control form-boxed"
                           name="image_TwoUrl">
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label">图片三：</div>
                <div class="form-cont">
                    <input type="file" placeholder="请输入图片url..." value="${project.imageThreeUrl}"
                           class="form-control form-boxed"
                           name="image_ThreeUrl">
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label">图片四：</div>
                <div class="form-cont">
                    <input type="file" placeholder="请输入图片url..." value="${project.imageFourUrl}"
                           class="form-control form-boxed"
                           name="image_FourUrl">
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label">图片五：</div>
                <div class="form-cont">
                    <input type="file" placeholder="请输入图片url..." value="${project.imageFiveUrl}"
                           class="form-control form-boxed"
                           name="image_FiveUrl">
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label">详情：</div>
                <div class="form-cont">
                    <textarea class="form-control form-boxed" name="detail">${project.detail}</textarea>
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label"></div>
                <div class="form-cont">
                    <input type="submit" class="btn btn-primary" value="添加"/>
                    <input type="reset" class="btn btn-disabled" value="重置"/>
                </div>
            </div>
        </form>
    </div>

</main>

</div>

</div>

<div class="mask"></div>
<div class="dialog">
    <div class="dialog-hd">
        <strong class="lt-title">标题</strong>
        <a class="rt-operate icon-remove JclosePanel" title="关闭"></a>
    </div>
    <div class="dialog-bd">
        <!--start::-->
        <p>这里是基础弹窗,可以定义文本信息，HTML信息这里是基础弹窗,可以定义文本信息，HTML信息。</p>
        <!--end::-->
    </div>
    <div class="dialog-ft">
        <button class="btn btn-info JyesBtn">确认</button>
        <button class="btn btn-secondary JnoBtn">关闭</button>
    </div>
    <script>
        laydate({elem: "#hello", event: "focus"});
        var start = {
            elem: "#start",
            format: "YYYY/MM/DD hh:mm:ss",
            min: laydate.now(),
            max: "2099-06-16 23:59:59",
            istime: true,
            istoday: false,
            choose: function (datas) {
                end.min = datas;
                end.start = datas
            }
        };
        var end = {
            elem: "#end",
            format: "YYYY/MM/DD hh:mm:ss",
            min: laydate.now(),
            max: "2099-06-16 23:59:59",
            istime: true,
            istoday: false,
            choose: function (datas) {
                start.max = datas
            }
        };
        laydate(start);
        laydate(end);
    </script>
</div>
</body>
</html>
