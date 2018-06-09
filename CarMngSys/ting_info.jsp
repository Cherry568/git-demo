<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>停车信息管理</title>
    <!--为了确保适当的绘制和触屏缩放，需要在 <head> 之中添加 viewport 元数据标签-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- 对话框 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="jquery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- 时间控件 -->
    <link href="calender/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <script type="text/javascript" src="calender/sample/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="calender/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="calender/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	
	<script type="text/javascript">  
	//处理停车操作
	function submitOK(carID){  
		var carID = carID;
	    var carStart = document.getElementById("carStart").value;
		var carPai = document.getElementById("carPai").value;
        var carEntrance = document.getElementById("carEntrance").value; 

        with(document.getElementById("stop")){
        		  action=encodeURI(encodeURI("stop.do?chewei_ID="+carID+"&car_Start="+carStart+"&car_Pai="+carPai+"&car_Entrance="+carEntrance));     
        		 //action="showXunReportAction.action?monthS="+monthS+"&monthE="+monthE+"&flag="+flag;
        		 //action="/record.do?chewei_ID=carID"
				method="post"
				submit();	
		}
	}  
	//处理车辆开走操作
	function Confirm(carID){  
		var carID = carID;
	    var carStart = document.getElementById("carEnd").value;
        var carExit = document.getElementById("carExit").value; 

        with(document.getElementById("leave")){
        		action=encodeURI(encodeURI("leave.do?chewei_ID="+carID+"&car_End="+carEnd+"&car_Exit="+carExit));     
				method="post"
				submit();	
		}
	}  
	</script> 
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
					<li><a href="mlist.do?method=listFree"><i class="icon-ok-sign"></i><font size="2"> 空闲车位查询</font></a></li>
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
	        <th>操作</th>
	        </tr>
	        <!-- 填充表格数据 -->
	        <c:forEach items="${chewei}" var="car">
	        <tr>
	        <td id="carID">${car.carID}</td>
	        <td>${car.carArea}</td>
	        <td>
	        <c:choose>
	      		<c:when test="${car.carState == 'Free'}">Free</c:when>
	      		<c:otherwise><span style="color:red">Occupied</span></c:otherwise>
	      	</c:choose>
	        </td>
	        <!-- 定义停车操作 -->
	        <td>
	        <c:choose>
	      		<c:when test="${car.carState == 'Free'}">
				    <button class="btn btn-info" data-toggle="modal" data-target="#myModal">停&emsp;&emsp;车</button>
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">停车</h4>
								</div>
								<form id="stop">
								<div class="modal-body" >
									<div style="margin-left:100px;">
								     <!-- 使用picker函数 -->
								      驶入时间：<input id="carStart" name="carStart" type="text"  placeholder="CarStart" style="width:40%;height:30px;margin-top:10px;padding:10px;" class="form_datetime" onFocus="WdatePicker()"><br>
								     &emsp;车牌号：<input id="carPai" name="carPai" type="text"  placeholder="CarNumber" style="width:40%;height:30px;margin-top:10px;padding:10px;"><br>
								     &emsp;驶入口：<select id="carEntrance" name="carEntrance" class="form-control" style="width:40%;height:30px;margin-top:10px;">
												  <option>NO.1</option>
												  <option>NO.2</option>
											</select>
									</div>
								</div>
								<div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						        <button type="button" class="btn btn-primary" onClick="submitOK(${car.carID})">提交</button>  
						      	</div>
								</form>
							</div>
						</div>
					</div>
			    </c:when>
			    <c:otherwise>
			      	<!-- <a class="btn btn-info" href="list.do?carID=${car.carID}&method=leave">车辆开走</a> -->
			      	<button class="btn btn-info" data-toggle="modal" data-target="#myModal1">车辆开走</button>
					<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel1">车辆开走</h4>
								</div>
								<!-- <html:form action="/record.do?chewei_ID=${car.carID}&method=leave"> -->
								<form id="leave">
								<div class="modal-body" >
									<div style="margin-left:100px;">
								     离开时间：<input id="carEnd" name="carEnd" type="text"  placeholder="CarEnd" style="width:40%;height:30px;margin-top:10px;padding:10px;" class="form_datetime" onFocus="WdatePicker()"><br>
								     &emsp;驶出口：<select id="carExit" name="carExit"  style="width:40%;height:30px;margin-top:10px;">
												  <option>NO.1</option>
												  <option>NO.2</option>
											</select>
									</div>
								</div>
								<div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						        <button type="button" class="btn btn-primary" onClick="Confirm(${car.carID})">提交</button>  
						      	</div>
						    	</form>
							</div>
						</div>
					</div>
			    </c:otherwise>
			</c:choose>			
	        </td>
	        </tr>
	        </c:forEach>
	        </tbody>
	        </table>
	        </div>
        </div>
    </div>
<hr style="height:3px;border:none;border-top:3px groove deepskyblue;margin-top:100px;" />
</div>
<script type="text/javascript">
    $(".form_datetime").datetimepicker({
    language: 'zh-CN',
    format: 'yyyy-mm-dd hh:mm:ss',
	todayBtn: true,
	weekStart: 1,  
    autoclose: true,  
    startView: 2,  
    minView: 2,  
    forceParse: false, 
    });
</script>        
</body>
</html>