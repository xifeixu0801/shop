<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>会员注册</title>

<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/orange.css">
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/ddsmoothmenu.css" />
<link rel="stylesheet" href="css/elastislide.css" />
<link rel="stylesheet" href="css/home_flexslider.css" />
<link rel="stylesheet" href="css/light_box.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>

<style type="text/css">
	.error_msg{
		color:red;
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

				<div class="col-lg-8 col-lg-offset-2">
					<form id="defaultForm" method="post" action="insert.user"
						class="form-horizontal">
						<fieldset>
							<legend>基本信息<span class="error_msg">（必填）</span></legend>

							<div class="form-group">
								<label class="col-lg-3 control-label">用户名</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" name="username" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">密码</label>
								<div class="col-lg-5">
									<input type="password" class="form-control" name="password1" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-3 control-label">确认密码</label>
								<div class="col-lg-5">
									<input type="password" class="form-control" name="password2" />
								</div>

							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">手机</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" name="phone" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">送货地址</label>
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

						<div class="form-group">
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
	<script src="js/common.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/ddsmoothmenu.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/jquery.elastislide.js"></script>
	<script src="js/jquery.jcarousel.min.js"></script>
	<script src="js/jquery.accordion.js"></script>
	<script src="js/light_box.js"></script>
	<script src="js/html5.js"></script>
</body>
</html>
