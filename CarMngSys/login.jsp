<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>login</title>
        <!-- 控制登录界面样式 -->
        <link rel="stylesheet" type="text/css" href="jquery/themes/default/easyui.css">
        <script type="text/javascript" src="jquery/jquery.min.js"></script>
        <script type="text/javascript" src="jquery/jquery.easyui.min.js"></script>
        <!-- 控制登录按钮样式 -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <div class="container-fluid">
    	<div class="container-fluid">
        <h3>Parking Management System</h3>
    	</div>
    	<hr style="height:3px;border:none;border-top:3px groove deepskyblue;" />
    	<div align="center" style="margin-top:80px;">
    	<html:form action="/login">
   		<div class="easyui-panel" style="width:400px;padding:50px 60px">
   			<!-- 使用Struts的HTML标签，加上calss属性form表单获取不到页面的参数值 -->
   			<!-- 使用html标签form也可以直接获取到参数值 -->
            <input type="text" name="username" class="easyui-textbox" prompt="Username" style="width:100%;height:34px;padding:10px;margin-bottom:20px;">
        	<div style="width:100%;height:20px;">
        	</div>
        	<input type="text" name="password" class="easyui-passwordbox" prompt="Password" style="width:100%;height:34px;padding:10px;margin-bottom:20px;">
        	<div>
            <input type="submit"  class="btn btn-info btn-search" value="登录" style="width:50%;margin-left:60px;margin-top:20px;">
        	</div>
    	</div>
    	</html:form>
    	<hr style="height:3px;border:none;border-top:3px groove deepskyblue;margin-top:120px;" />
    	</div>
    	</div>
    </body>
    </html>