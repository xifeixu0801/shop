<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>电商平台后台首页</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/toastr.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.knob.js"></script>
<script src="js/d3.v3.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toastr.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/gcal.js"></script>
<script src="js/setup.js"></script>

</head>
<body>

	<%@include file="header.jsp" %>
	<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="span3">
						<h4>后台管理</h4>
						<div class="sidebar">
							<ul class="col-nav span3">
								<!-- 管理员管理  -->
								<li><a href="#admin" data-toggle="collapse"
									class="accordion-toggle"> <span
										class="label label-inverse pull-right">1</span>管理员管理
								</a></li>
								<li id="admin" class="collapse">
									<ul>
										<li><a href="findAll.admin"> <i
												class="pull-right icon-signal"></i>管理员列表
										</a>
									</ul>
								</li>
								<!-- 用户管理  -->
								<li><a href="#metrics" data-toggle="collapse"
									class="accordion-toggle"> 
									<span class="label label-inverse pull-right">
										1
									</span>用户管理
								</a></li>
								<li id="metrics" class="collapse">
									<ul>
										<li><a href="findAll.user"> <i
												class="pull-right icon-signal"></i>用户列表
										</a><a href="user_register.jsp"> <i class="pull-right icon-fire"></i>添加用户
										</a></li>
									</ul>
								</li>
								<!-- 类别管理  -->
								<li><a href="#bookmarks" data-toggle="collapse"
									class="accordion-toggle"><span
										class="label label-inverse pull-right">2 </span>类别管理</a></li>
								<li id="bookmarks" class="collapse">
									<ul>
										<li><a href="category_addRoot.jsp"> <i
												class="pull-right icon-plane"></i>添加根类别
										</a><a href="category_list.jsp"> <i
												class="pull-right icon-fire"></i>类别列表
										</a></li>
									</ul>
								</li>

								<!-- 商品管理  -->
								<li><a href="#product" data-toggle="collapse"
									class="accordion-toggle"> <span
										class="label label-inverse pull-right">3</span>商品管理
								</a></li>
								<li id="product" class="collapse">
									<ul>
										<li><a href="findAll.product"> <i
												class="pull-right icon-cog"></i>商品列表
										</a><a href="#"> <i class="pull-right icon-fire"></i>添加商品
										</a>
										<a href="searchProductComplex.product"> <i class="pull-right icon-cog"></i>商品搜索（复杂）</a>
										</li>
									</ul>
								</li>
								<!-- 订单管理  -->
								<li><a href="#order" data-toggle="collapse"
									class="accordion-toggle"> <span
										class="label label-inverse pull-right">3</span>订单管理
								</a></li>
								<li id="order" class="collapse">
									<ul>
										<li><a href="orders.html"> <i
												class="pull-right icon-cog"></i>查看订单
										</a>
										<a href="search_order_complex.html"> <i class="pull-right icon-cog"></i>订单搜索（复杂）</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<div class="span9">
						<h4 class="header">Sales</h4>
						<div id="d3" style="width: 100%; margin-top: -30px"></div>
						<br />
						<div class="row-fluid">
							<div class="span3 knob">
								<h4>Knobs</h4>
								<input type="text" value="70" data-width="120"
									data-fgcolor="#14B8D4" data-readonly="true" class="dial" />
							</div>
							<div class="span3 knob">
								<h4>Inactive</h4>
								<input type="text" value="30" data-width="120"
									data-fgcolor="#EA494A" data-readonly="true" class="dial" />
							</div>
							<div class="span3 knob">
								<h4>Warning</h4>
								<input type="text" value="66" data-width="120"
									data-fgcolor="#FFA93C" data-readonly="true" class="dial" />
							</div>
							<div class="span3 knob">
								<h4>Total</h4>
								<input type="text" value="92" data-width="120"
									data-fgcolor="#333" data-readonly="true" class="dial" />
							</div>
						</div>
						<div class="row-fluid">
							<div class="span4">
								<ul class="stat-list">
									<li><label class="label-warning"><i
											class="icon-fire icon-white"></i></label>
										<h4>375</h4>
										<h4 class="sub">fires</h4></li>
									<li><label class="label-important"><i
											class="icon-heart icon-white"></i></label>
										<h4>103</h4>
										<h4 class="sub">hearts</h4></li>
									<li><label class="label-success"><i
											class="icon-leaf icon-white"></i></label>
										<h4>92</h4>
										<h4 class="sub">bugs</h4></li>
									<li><label class="label-info"><i
											class="icon-tint icon-white"></i></label>
										<h4>865</h4>
										<h4 class="sub">leaks</h4></li>
									<li><label class="label-inverse"><i
											class="icon-road icon-white"></i></label>
										<h4>65</h4>
										<h4 class="sub">miles</h4></li>
								</ul>
							</div>
							<div class="span4">
								<div class="peity">
									<span class="pbar">5,3,8,7,9,1,2,6,5,8</span>
									<h4>71</h4>
									<h4 class="sub">signups</h4>
								</div>
								<div class="peity">
									<span class="pbar">2,7,6,2,9,8,6,0,1,3</span>
									<h4>96</h4>
									<h4 class="sub">bounces</h4>
								</div>
								<div class="peity">
									<span class="pbar">8,9,6,5,7,3,1,4,2,1</span>
									<h4>25</h4>
									<h4 class="sub">ad views</h4>
								</div>
								<div class="peity">
									<span class="pbar">4,5,3,7,4,6,5,6,3,4</span>
									<h4>82</h4>
									<h4 class="sub">comments</h4>
									<br />
								</div>
							</div>
							<div class="span4">
								<div class="spark">
									<h4>
										DAX <span class="sparklines"></span>
									</h4>
									<h4 class="sub">
										310.5 <span class="minus">-0.45</span>
									</h4>
								</div>
								<div class="spark">
									<h4>
										mPAX <span class="sparklines"></span>
									</h4>
									<h4 class="sub">
										6170.4 <span class="plus">+0.21</span>
									</h4>
								</div>
								<div class="spark">
									<h4>
										FTSE <span class="sparklines"></span>
									</h4>
									<h4 class="sub">
										5711.1 <span class="plus">+0.31</span>
									</h4>
								</div>
							</div>
						</div>
						<hr />
						<h4>Status Widgets</h4>
						<div class="stats">
							<div class="row-fluid">
								<div class="span3">
									<div class="stat info">
										<h2>21</h2>
										<h6>Tweets</h6>
									</div>
								</div>
								<div class="span3">
									<div class="stat danger">
										<h2>04</h2>
										<h6>Comments</h6>
									</div>
								</div>
								<div class="span3">
									<div class="stat warning">
										<h2>17</h2>
										<h6>Photos</h6>
									</div>
								</div>
								<div class="span3">
									<div class="stat inverse">
										<h2>12</h2>
										<h6>Followers</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="row-fluid">
							<div class="span6">
								<div class="widget">
									<table style="width: 100%">
										<tr>
											<td class="bar-label">Laptop</td>
											<td class="bar-number">324</td>
											<td>
												<div class="progress">
													<div style="width: 75%" class="bar"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td class="bar-label">Desktop</td>
											<td class="bar-number">91</td>
											<td>
												<div class="progress">
													<div style="width: 30%;" class="bar"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td class="bar-label">Mobile</td>
											<td class="bar-number">284</td>
											<td>
												<div class="progress">
													<div style="width: 60%;" class="bar"></div>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="span6">
								<div class="widget">
									<table style="width: 100%">
										<tr>
											<td class="bar-label">Laptop</td>
											<td class="bar-percent">23<span>%</span></td>
											<td>
												<div class="progress">
													<div style="width: 23%" class="bar bar-danger"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td class="bar-label">Desktop</td>
											<td class="bar-percent">91<span>%</span></td>
											<td>
												<div class="progress">
													<div style="width: 91%;" class="bar bar-success"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td class="bar-label">Server</td>
											<td class="bar-percent">18<span>%</span></td>
											<td>
												<div class="progress">
													<div style="width: 18%;" class="bar bar-warning"></div>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<hr />
						<div class="row-fluid">
							<div class="span6">
								<div class="table-panel">
									<h4>
										<i class="icon-eye-open"></i>Browsers
									</h4>
									<table class="table table-striped sortable">
										<thead>
											<tr>
												<th>Browser</th>
												<th>Visitors</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Firefox</td>
												<td>9580</td>
											</tr>
											<tr>
												<td>Chrome</td>
												<td>7668</td>
											</tr>
											<tr>
												<td>Safari</td>
												<td>3021</td>
											</tr>
											<tr>
												<td>Internet Explorer</td>
												<td>1011</td>
											</tr>
											<tr>
												<td>Opera</td>
												<td>922</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="span6">
								<div class="table-panel">
									<h4>
										<i class="icon-share-alt"></i>Referrers
									</h4>
									<table class="table table-striped sortable">
										<thead>
											<tr>
												<th>URL</th>
												<th>Visits</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="">google.com</a></td>
												<td>17665</td>
											</tr>
											<tr>
												<td><a href="">bing.com</a></td>
												<td>24588</td>
											</tr>
											<tr>
												<td><a href="">logobro.com</a></td>
												<td>13022</td>
											</tr>
											<tr>
												<td><a href="">yahoo.com</a></td>
												<td>8922</td>
											</tr>
											<tr>
												<td><a href="">duckduckgo.com</a></td>
												<td>11014</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<hr />
						<h4>Status Panels</h4>
						<div class="panel">
							<div class="top primary">
								<i class="batch-big b-database"></i>
								<h6>database</h6>
							</div>
							<div class="bottom">
								<h2>7720</h2>
								<h6>rows</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top warning">
								<i class="batch-big b-flag"></i>
								<h6>warnings</h6>
							</div>
							<div class="bottom">
								<h2>21</h2>
								<h6>service requests</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top success">
								<i class="batch-big b-code"></i>
								<h6>Code Size</h6>
							</div>
							<div class="bottom">
								<h2>2034</h2>
								<h6>loc</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top danger">
								<i class="batch-big b-comment"></i>
								<h6>Communication</h6>
							</div>
							<div class="bottom">
								<h2>596</h2>
								<h6>comments</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top">
								<i class="batch-big b-alarm"></i>
								<h6>Time Remaining</h6>
							</div>
							<div class="bottom">
								<h2>51</h2>
								<h6>minutes</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top purple">
								<i class="batch-big b-wifi"></i>
								<h6>WiFi Range</h6>
							</div>
							<div class="bottom">
								<h2>86%</h2>
								<h6>availability</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top info">
								<i class="batch-big"></i>
								<h6>Locations</h6>
							</div>
							<div class="bottom">
								<h2>45</h2>
								<h6>sites</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				(function() {
					var delay;

					delay = function(ms, func) {
						return setTimeout(func, ms);
					};

					toastr.options = {
						positionClass : 'toast-bottom-left'
					};

					delay(1000, function() {
						return toastr.success('Have fun storming the castle!',
								'Miracle Max Says');
					});

					delay(
							1500,
							function() {
								return toastr
										.warning('My name is Inigo Montoya. You Killed my father, prepare to die!');
							});

					delay(
							2000,
							function() {
								return toastr
										.error(
												'I do not think that word means what you think it means.',
												'Inconceivable!');
							});

				}).call(this);
			</script>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
<script src="js/d3-setup.js"></script>
</html>