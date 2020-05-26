<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<title>管理员注册</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/toastr.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.knob.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toastr.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/gcal.js"></script>
<script src="js/setup.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />

</head>
<body>
	<%@include file="header.jsp"%>
	<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="span12">
						<h4 class="header">管理员注册</h4>
						<form action="insert.admin" method="post">
							<table class="table table-striped sortable">
								<thead>
								</thead>
								<tbody>
									<%-- <c:forEach items="admins" var="admin"> --%>
										<tr>
											<th>用户名</th>

											<td><input type="text" name="name" /><span
												class="error"></span></td>
										</tr>
										<tr>
											<th>密码</th>
											<td><input type="password" name="password" /></td>
										</tr>
										<tr>
											<th>确认密码</th>
											<td><input type="password" name="confirmpwd" /></td>
										</tr>
									<%-- </c:forEach> --%>
									<tr>
										<td></td>
										<td><input class="btn btn-success" type="submit"
											value="注册" />&nbsp;&nbsp;&nbsp;<input class="btn btn-danger"
											type="reset" value="重置" /></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
<script src="js/d3-setup.js"></script>

</html>