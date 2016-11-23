<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food for thought | Login</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/main.css" rel="stylesheet" />
<script src="resources/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="login-overlay" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">Login</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-6">
						<div class="well">
							<form id="loginForm" method="POST" action=""
								novalidate="novalidate">
								<div class="form-group">
									<label for="username" class="control-label">Username</label> <input
										type="text" class="form-control" id="username" name="username"
										value="" required="" title="Please enter you username"
										placeholder="example@gmail.com"> <span
										class="help-block"></span>
								</div>
								<div class="form-group">
									<label for="password" class="control-label">Password</label> <input
										type="password" class="form-control" id="password"
										name="password" value="" required=""
										title="Please enter your password"> <span
										class="help-block"></span>
										<a href="forgot.jsp">Forgot password?</a>
								</div>
								<div id="loginErrorMsg" class="alert alert-error hide">Wrong
									username or password</div>
								<div class="checkbox">
									<label> <input type="checkbox" name="remember"
										id="remember"> Remember login
									</label>
								</div>
								<button type="submit" class="btn btn-success btn-block">Login</button>
							</form>
						</div>
					</div>
					<div class="col-xs-6">
						<p class="lead">
							Register now for <span class="text-success">FREE</span>
						</p>
						<ul class="list-unstyled" style="line-height: 2">
							<li><span class="fa fa-check text-success"></span> See all
								your orders</li>
							<li><span class="fa fa-check text-success"></span> Fast order</li>
							<li><span class="fa fa-check text-success"></span> Save your
								favorites</li>
							<li><span class="fa fa-check text-success"></span> Fast
								checkout</li>
						</ul>
						<p>
							<a href="register.jsp" class="btn btn-info btn-block">Yes
								please, register now!</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>