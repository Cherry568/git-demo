<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>车位信息添加</title>
    <!--为了确保适当的绘制和触屏缩放，需要在 <head> 之中添加 viewport 元数据标签-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery/jquery.min.js"></script>
    <!-- 添加车位信息 -->
    <link rel="stylesheet" type="text/css" href="jquery/themes/default/easyui.css">
    <script type="text/javascript" src="jquery/jquery.easyui.min.js"></script>
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
            
            <!-- 添加车位信息表单 -->
            <html:form action="/add">
            <div align="center">
            <div style="margin:20px 0;"></div>
            
    		<div class="easyui-panel" style="width:400px;padding:50px 60px">
	        	<div style="margin-bottom:20px">
	            车位编号：<input name="chewei_ID" class="easyui-textbox" prompt="ID" iconWidth="28" style="width:100%;height:34px;padding:10px;">
	        	<font size="1" color="red">${msg}</font>
	        	</div>
	        	<div style="margin-bottom:20px">
	            车位分区：<select name="chewei_Area" class="easyui-combobox" style="width:100%;height:34px;padding:10px;">
						  <option>A区</option>
						  <option>B区</option>
						  <option>C区</option>
						</select>
	        	</div>
	        	<div style="margin-bottom:20px">
        		<input type="submit"  class="btn btn-info btn-search" value="添加" style="width:50%;margin-left:60px;margin-top:20px;">
	        	</div>
        	</div>
    		</div>
    		</html:form>
    		
    	</div>
    	</div>
        <hr style="height:3px;border:none;border-top:3px groove deepskyblue;margin-top:100px;" />
        </div>
</body>
</html>