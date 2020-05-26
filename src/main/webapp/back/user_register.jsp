<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>会员注册</title>

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

<style type="text/css">
	.error_msg{
		color:red;
	}
	.form-group{
		padding:10px 0px;
		
	}
</style>
</head>
<body>
<%@include file="header.jsp"%>
	<div class="container">
		<div class="row">
			<!-- form: -->
			<section>
				<div class="page-header">
					<h1>会员注册</h1>
				</div>

				<div class="col-lg-8 col-lg-offset-2" >
					<form id="defaultForm" method="post" action="insert.user"
						class="form-horizontal" >
						<fieldset>
							<legend>基本信息<span class="error_msg">（必填）</span></legend>

							<div class="form-group">
								<label class="col-lg-3 control-label">用户名：</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" name="username" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">密码：</label>
								<div class="col-lg-5">
									<input type="password" class="form-control" name="password1" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-3 control-label">确认密码：</label>
								<div class="col-lg-5">
									<input type="password" class="form-control" name="password2" />
								</div>

							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">联系方式：</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" name="phone" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">送货地址：</label>
								<div class="col-lg-5">
									<textarea class="form-control" rows="4" cols="10" name="addr"></textarea>
								</div>
							</div>
						</fieldset>
						<script>
							 $(function(){ 
							     var regBtn = $("#regBtn");
							     $("#regText").change(function(){
							         var that = $(this);
							         that.prop("checked",that.prop("checked"));
							         if(that.prop("checked")){
							             regBtn.prop("disabled",false);
							         }else{
							             regBtn.prop("disabled",true);
							         }
							     });
							 });
						</script>

						<div class="form-group" style="padding-left:150px;">
							<div class="col-lg-9 col-lg-offset-3">
								<button type="submit" class="btn btn-primary">注册</button>
								&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
								<button type="reset" class="btn btn-info">重填</button>
							</div>
						</div>
					</form>
				</div>
			</section>
			<!-- :form -->
		</div>
	</div>

	<script type="text/javascript">
$(function() {
    $('#defaultForm').bootstrapValidator({
        message: '非法输入',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                message: '用户名无效',
                validators: {
                    notEmpty: {
                        message: '用户名必须填写并且不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: '用户名长度为6-30个字符'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: '用户名只能由字母、数字、数字和下划线组成 '
                    }
                }
            },
            password1: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    identical: {
                        field: 'confirmPassword',
                        message: '两次密码不相同'
                    }
                }
            },
            password2: {
                validators: {
                    notEmpty: {
                        message: '确认密码不能为空'
                    },
                    identical: {
                        field: 'password1',
                        message: '两次密码不相同'
                    }
                }
            },
           
   
            addr: {
                validators: {
                	notEmpty: {
                        message: '送货地址必须填写'
                    }
                }
            },
         
            phone: {
            	validators: {
            		notEmpty: {
                        message: '电话号码必须填写'
                    },
                    regexp: {
                        regexp: /^1[3|4|5|7|8]\d{9}$/,
                        message: '手机号为11位数字 '
                    }
            	}
            }
            
        }
    });
});
</script>
<%@include file="footer.jsp"%>

</body>
</html>
