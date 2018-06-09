<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>占用车位查询</title>
    <!--为了确保适当的绘制和触屏缩放，需要在 <head> 之中添加 viewport 元数据标签-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery/jquery.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="container-fluid">
        <h3>Parking Management System</h3>
        <a href="exit.do" style="margin-left:1200px;" onclick="return confirm('确定要退出系统吗？')">退出系统</a>
    </div>
    <hr style="height:3px;border:none;border-top:3px groove deepskyblue;" />
    <div class="container-fluid">
        <div class="row">
            <div class="span2  col-xs-12 col-sm-3 col-md-2">
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="index.jsp"><i class="icon-home icon-white"></i><font size="2"><strong> Home</strong></font></a></li>
                    <li><a href="modifyInfo.jsp"><i class=" icon-pencil"></i><font size="2"> 修改个人信息</font></a></li>
                    <li><a href="list.do?method=list"><i class="icon-align-justify"></i><font size="2"> 车位信息管理</font></a></li>
                    <li><a href="chewei_add.jsp"><i class="icon-plus"></i><font size="2"> 车位信息添加</font></a></li>
					<li><a href="list.do?method=listFree"><i class="icon-ok-sign"></i><font size="2"> 空闲车位查询</font></a></li>
                    <li><a href="list.do?method=listOcpt"><i class="icon-remove-sign"></i><font size="2"> 占用车位查询</font></a></li>
                    <li><a href="list.do?method=listState"><i class="icon-th-large"></i><font size="2"> 停车信息管理</font></a></li>
                    <li><a href="list.do?method=listRecord"><i class="icon-check"></i><font size="2"> 停车记录查看</font></a></li>
                </ul>
            </div>
            <!-- 车位信息表格 -->
	        <div class="container" style="float:left;margin-top:50px;margin-left:50px;">
	        <table class="table table-hover" width="700">
	        <tbody>
	        <tr>
	        <th>车位编号</th>
	        <th>车位分区</th>
	        <th>状态</th>
	        </tr>
	        <!-- 填充表格数据 -->
	        <c:forEach items="${cheweiOcpt}" var="car">
	        <tr>
	        <td>${car.carID}</td>
	        <td>${car.carArea}</td>
	        <td>${car.carState}</td>
	        </tr>
	        </c:forEach>
	        </tbody>
	        </table>
	        </div>
        </div>
    </div>
<hr style="height:3px;border:none;border-top:3px groove deepskyblue;margin-top:130px;" />
</div>
</body>
</html>