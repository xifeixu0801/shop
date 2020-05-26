<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="description" content="description of your site" />
<meta name="author" content="author of the site" />
<title>电商平台后台首页</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/toastr.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.knob.js"></script>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toastr.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/gcal.js"></script>
<script src="js/setup.js"></script>
<script>
	function resetpwd(id){
		if(confirm("确定要重置密码吗？")){
			alert("重置密码成功！");
			window.location.href="resetPassword.user?id="+id;
		}else{
			alert("再考虑考虑！");
		}
	}
	
	function deleteUser(id){
		if(confirm("确定要删除该用户吗？")){
			alert("删除成功！");
			window.location.href="delete.user?id="+id;
		}else{
			alert("再考虑考虑！");
		}
	}

</script>
</head>
<body>
	<%@include file="header.jsp"%>

	<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="span12">
						<!-- <a href="#newUserModal" data-toggle="modal" class="btn pull-right">添加用户</a> -->
						<h4 class="header">用户列表</h4>
						<table class="table table-striped sortable">
							<thead>

								<tr>
									<th>用户ID</th>
									<th>用户名</th>
									<th>密码</th>
									<th>电话</th>
									<th>送货地址</th>
									<th>注册日期</th>
									<th>用户状态</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${users }" var="user">
									<tr>
										<td>${user.id }</td>
										<td>${user.name }</td>
										<td>${user.password }</td>
										<td>${user.phone }</td>
										<td>${user.addr }<span class="label label-success">已发货</span></td>
										<td>${user.rdate }</td>
										<td>${user.status }</td>
										<td>
											<div class="btn-group">
												<button class="btn">操作</button>
												<button data-toggle="dropdown" class="btn dropdown-toggle">
													<span class="caret"></span>
												</button>
												<ul class="dropdown-menu">
													<li><a href="javascript:;"
														onclick="resetpwd(${user.id})">重置密码</a> <a
														href="javascript:;" onclick="deleteUser(${user.id})">删除</a></li>
												</ul>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="pagination pagination-centered">
							<ul>
								<li class="disabled"><a href="#">&laquo;</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
<script src="js/d3-setup.js"></script>
<script>
	protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
	address = protocol + window.location.host + window.location.pathname
			+ '/ws';
	socket = new WebSocket(address);
	socket.onmessage = function(msg) {
		msg.data == 'reload' && window.location.reload()
	}
</script>
</html>