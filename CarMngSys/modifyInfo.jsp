<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>修改个人信息</title>
    <!--为了确保适当的绘制和触屏缩放，需要在 <head> 之中添加 viewport 元数据标签-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery/jquery.min.js"></script>
    
    <!-- 修改密码 -->
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
            
            <!-- 修改密码表单 -->
            <div align="center">
            <html:form action="/modify">
            <div style="margin:20px 0;"></div>
    		<div class="easyui-panel" style="width:400px;padding:50px 60px">
	        	<div style="margin-bottom:20px">
	            <input name="username" class="easyui-textbox" prompt="Username" value="${user.username}" readonly style="width:100%;height:34px;padding:10px;">
	        	</div>
	        	<div style="margin-bottom:20px">
	            <input name="password" id="pass" class="easyui-passwordbox" prompt="Password" value="${user.password}" style="width:100%;height:34px;padding:10px">
	        	</div>
	        	<div style="margin-bottom:20px">
	            <input class="easyui-passwordbox" prompt="Confirm your password" iconWidth="28" validType="confirmPass['#pass']" style="width:100%;height:34px;padding:10px">
        		<input type="submit"  class="btn btn-info btn-search" value="修改" style="width:50%;margin-left:60px;margin-top:20px;">
        		</div>
        	</div>
    		</div>
            </html:form>
 			
 			<!-- ****** -->
		    <script type="text/javascript">
		        $.extend($.fn.validatebox.defaults.rules, {
		            confirmPass: {
		                validator: function(value, param){
		                    var pass = $(param[0]).passwordbox('getValue');
		                    return value == pass;
		                },
		                message: '确认密码不匹配.'
		            }
		        })
		    </script>
        </div>
        
    </div>
<hr style="height:3px;border:none;border-top:3px groove deepskyblue;margin-top:100px;" />
</div>
</body>
</html>