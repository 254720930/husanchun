<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>项目</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/cssAndJs/images/icon/favicon.ico">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min862f.css?v=4.1.0" rel="stylesheet">


    <style type="text/css">
        td {
            text-align: center;
        }

    </style>

</head>

<body class="gray-bg">

<div class="wrapper wrapper-content animated fadeInUp">
    <div class="row">
        <div class="col-sm-12">

            <div class="ibox">
                <div class="ibox-title">
                    <h5>所有项目</h5>
                    <div class="ibox-tools">
                        <a href="${pageContext.request.contextPath}/project/showPage"
                           class="btn btn-primary btn-xs">创建新项目</a>
                    </div>
                </div>

                <div class="ibox-content">
                    <form action="${pageContext.request.contextPath}/project/list" method="post">
                        <div class="row m-b-sm m-t-sm">
                            <div class="col-md-1">
                                <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i
                                        class="fa fa-refresh"></i> 刷新
                                </button>
                            </div>
                            <div class="col-md-11">
                                <div class="input-group">
                                    <input type="text" placeholder="请输入项目名称" class="input-sm form-control"
                                           name="projectName"> <span
                                        class="input-group-btn">
                                        <button type="submit" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                            </div>
                        </div>
                    </form>

                    <div class="project-list">
                        <table class="table table-hover" style="table-layout: fixed;">
                            <tbody>
                            <thead>
                            <tr>
                                <th style="text-align: center; width: 5%">序号</th>
                                <th style="text-align: center; width: 11%;">
                                    项目名称
                                </th>
                                <th style="text-align: center; width: 15%;">
                                    项目详情
                                </th>
                                <th style="text-align: center; width: 10%;">所用技术</th>

                                <th style="text-align: center; width: 10%;">
                                    前端项目地址
                                </th>
                                <th style="text-align: center; width: 10%;">
                                    后端项目地址
                                </th>

                                <th style="text-align: center; width: 7%">编辑</th>
                                <th style="text-align: center; width: 7%">删除</th>
                            </tr>
                            </thead>
                            <c:forEach items="${projectList}" var="project" varStatus="var">
                                <tr>
                                    <td>
                                        <span class="label label-primary">${var.count}
                                    </td>

                                    <td style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${project.projectName}<br/>
                                    </td>

                                    <td style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${project.detail}</td>


                                    <td style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${project.skillType}
                                    </td>

                                    <td style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;"><a
                                            href="${project.projectBeforeUrl}"><input type="button"
                                                                                      class="btn btn-primary btn-sm"
                                                                                      value="在线演示"/></a><br/>
                                    </td>
                                    <td style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;"><a
                                            href="${project.projectBehindUrl}"><input type="button"
                                                                                      class="btn btn-primary btn-sm"
                                                                                      value="在线演示"/></a><br/>
                                    </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/project/edit?id=${project.id}"
                                           class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i> 编辑 </a>
                                    </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/project/delete?id=${project.id}"
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
