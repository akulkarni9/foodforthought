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
				<h4 class="modal-title" id="myModalLabel">Verify email</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-12">
						<div class="well">
							<form id="loginForm" method="POST" action=""
								novalidate="novalidate">
								<div class="form-group">
									<label for="username" class="control-label">OTP</label> <input
										type="text" class="form-control" id="otp" name="otp"
										value="" required="" title="Please enter OTP"
										placeholder="XYZ"> <span
										class="help-block"></span>
								</div>
								<button type="button" class="btn btn-success btn-block">Verify</button>
								<a href="register.jsp">Back to registration</a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>