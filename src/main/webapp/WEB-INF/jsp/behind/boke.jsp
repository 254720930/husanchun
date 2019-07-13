<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

    <script src="${pageContext.request.contextPath}/js/confirm.js"></script>


    <title>博客</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/cssAndJs/images/icon/favicon.ico">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/confirm.js"></script>

    <style type="text/css">
        td {
            text-align: center;
            font-size: 14px;
        }

        th {
            font-size: 15px;
        }
    </style>

    <script>
        function showDelete(name, id) {

            Confirm.show('溫馨提示', '您确定要刪除[' + name + ']博客吗？', {
                '确定': {
                    'primary': true,
                    'callback': function () {
                        location.href = "${pageContext.request.contextPath}/boke/delete?id=" + id;
                    }
                }
            });
        }
    </script>

</head>

<body class="gray-bg">

<div class="wrapper wrapper-content animated fadeInUp">
    <div class="row">
        <div class="col-sm-12">

            <div class="ibox">
                <div class="ibox-title">
                    <h5>所有博客</h5>
                    <div class="ibox-tools">
                        <a href="${pageContext.request.contextPath}/boke/addBoke" class="btn btn-primary btn-xs">添加博客</a>
                    </div>
                </div>

                <div class="ibox-content">
                    <form action="${pageContext.request.contextPath}/boke/list" method="post">
                        <div class="row m-b-sm m-t-sm">
                            <div class="col-md-1">
                                <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i
                                        class="fa fa-refresh"></i> 刷新
                                </button>
                            </div>
                            <div class="col-md-11">
                                <form action="showSpeaker">
                                    <div class="input-group">
                                        <input type="text" placeholder="请输入博客名称" name="speakerName"
                                               class="input-sm form-control "> <span class="input-group-btn">
                                        <input type="submit" class="btn btn-sm btn-primary" value="搜索"/></span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </form>

                    <div class="project-list">

                        <table class="table table-hover"
                               style="text-align: center;margin-right:10px;width:99%;table-layout: fixed;">
                            <tbody>
                            <thead style="text-align: center;">
                            <tr>
                                <th style="text-align: center;width: 5%">序号</th>
                                <th style="text-align: center;width: 8%">博客标题</th>
                                <th style="text-align: center;width: 22%">技术选型</th>
                                <th style="text-align: center;width: 8%">讲师名字</th>
                                <th style="text-align: center;width: 8%">博客正文</th>
                                <th style="text-align: center;width: 8%">更新时间</th>
                                <th style="text-align: center;width: 8%">阅读数</th>
                                <th style="text-align: center;width: 8%">编辑</th>
                                <th style="text-align: center;width: 8%">删除</th>
                            </tr>
                            </thead>
                            <c:forEach items="${bokeList}" var="boke" varStatus="var">

                                <tr>
                                    <td><span class="label label-primary"/>${var.count}</td>

                                    <td>${boke.bokeTitle}</td>

                                    <td style="padding-top: 6px; overflow: hidden; white-space: nowrap; text-overflow:ellipsis;">
                                            ${boke.skillType}
                                    </td>
                                    <td style="height: 100px">${boke.speakerName}</td>

                                    <td style="height: 100px">${boke.bokeInfo}</td>
                                    <td style="height: 100px">${boke.createTime}</td>
                                    <td style="height: 100px">${boke.readNum}</td>

                                    <td>

                                        <a href="${pageContext.request.contextPath}/boke/edit?id=${boke.id}"
                                           class="btn btn-primary btn-sm"><i
                                                class="fa fa-pencil"></i>
                                            修改 </a>
                                    </td>

                                    <td>
                                        <a href="#" onclick="showDelete('${boke.bokeTitle}',${boke.id})"
                                           class="btn btn-primary btn-sm"><i
                                                class="glyphicon glyphicon-trash"></i> 删除 </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


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




