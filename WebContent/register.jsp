<%@page import="com.mysql.jdbc.Driver.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.io.*, java.sql.*"%>
<%@ page import="javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food for thought | Register</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/main.css" rel="stylesheet" />
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="login-overlay" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">Register</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-12">
						<div class="well">
							<form id="regForm" method="POST" action=""
								novalidate="novalidate">
								<div class="form-group">
									<label for="username" class="control-label">Full name</label> <input
										type="text" class="form-control" id="fullname" name="fullname"
										value="" required="" title="Please enter you username">
									<span class="dis"></span>
								</div>
								<div class="form-group">
									<label for="emailid" class="control-label">Email ID</label> <input
										type="email" class="form-control" id="email" name="emailid"
										value="" required="" title="Please enter you username"
										placeholder="example@gmail.com"> <span class="dis1"></span>
								</div>
								<div class="form-group">
									<label for="country" class="control-label">Country</label> <select
										class="form-control" name="country" id="dropdownCountry">
										<option>India</option>
										<option>Japan</option>
										<option>Russia</option>
									</select> <span class="help-block"></span>
								</div>
								<div class="form-group">
									<label for="password" class="control-label">Password</label> <input
										type="password" class="form-control" id="password"
										name="password" value="" required=""
										title="Please enter your password"> <span class="dis2"></span>
								</div>
								<div class="form-group">
									<label for="password" class="control-label">Confirm
										Password</label> <input type="password" class="form-control"
										id="repassword" name="repassword" value="" required=""
										title="Please re-enter your password"> <span
										class="dis3"></span>
								</div>
								<input class="btn btn-success btn-block register" type="submit" value="Register">  
								<a href="index.jsp">Back to login</a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
	
	$('.register').click(function(e) {
	
	    var fname = $('#fullname').val();
	    var email = $('#email').val();
	    var country = $('#dropdownCountry :selected').text();
	    var password = $('#password').val();
	    var repassword = $('#repassword').val();
	    var fields = $('.formfields');
	    var inputId = $(this).attr('id');
	    var inputText = $(this).val();
	    var email_reg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	
	    if (fname == "" || fname == null) {
	        $('#fullname').css('border-color', 'red');
	        $('.dis').fadeIn(1000);
	        $('.dis').html("Full name is mandatory").fadeOut(9000);
	    } else {
	    	$('#fullname').css('border-color', '');
	    }
	    if (!(email.match(email_reg))) {
	        $('#email').css('border-color', 'red');
	        $('.dis1').fadeIn(1000);
	        $('.dis1').html("Email address should be in format abc@def.xyz").fadeOut(9000);
	    } else if (email == "" || email == null) {
	    	$('#email').css('border-color', 'red');
	        $('.dis1').fadeIn(1000);
	        $('.dis1').html("Email is mandatory").fadeOut(9000);
	    } else {
	    	$('#email').css('border-color', '');
	    }
	    if (password == '' || password == null) {
	        $('#password').css('border-color', 'red');
	        $('.dis2').fadeIn(1000);
	        $('.dis2').html("Password is mandatory").fadeOut(9000);
	    } else if (password.length <= 6) {
	    	$('#password').css('border-color', 'red');
	        $('.dis2').fadeIn(1000);
	        $('.dis2').html("Password should be greater than 6 characters").fadeOut(9000);
	    } else if (password != repassword) {
	    	$('#repassword').css('border-color', 'red');
	        $('.dis3').fadeIn(1000);
	        $('.dis3').html("Password and confirm password aren't same").fadeOut(9000);
	    } else {
	    	$('#password').css('border-color', '');
	    	$('#repassword').css('border-color', '');
	    }
	
	    <%-- var url = '<%=request.getContextPath()%>/verify.jsp';
	    window.location.replace(url); --%>
	    
	    /* if (fname != "" || fname != null && (email.match(email_reg)) && email != "" || email != null && password != '' || password != null && password.length >= 6 && password == repassword ) {
			window.location.href = 'verify.jsp';	    	
	    }
	    else {
	    	alert("Please enter all fields");
	    } */
	    
	});
	
	</script>

	<%

	String fname = request.getParameter("fullname");
	String mail = request.getParameter("emailid");
	String country = request.getParameter("country");
	String pword = request.getParameter("password");

	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodforthought", "root",
			"ajay143enexl");											
	Statement statement = connection.createStatement();
	try {
		/* int i = statement.executeUpdate("insert into users (username,email,country,password) values ('"+fname+"','"+mail+"','"+country+"','"+pword+")"); */ 
		/* PreparedStatement preparedStatement = connection.prepareStatement("insert into users (username,email,country,password) values (fname,mail,country,pword)"); */
		String sql = "insert into users (fullname, emailid, country, pword) values (?, ?, ?, ?)";
		PreparedStatement preparedStatement = connection.prepareStatement(sql); 
		
		// Insert values safe and indirectly to avoid mistakes and SQL injection
		preparedStatement.setString(1, fname);
		preparedStatement.setString(2, mail);
		preparedStatement.setString(3, country);
		preparedStatement.setString(4, pword);
		
		// Perform the update
		int count = preparedStatement.executeUpdate();
		if (count == 0) {
			System.out.println("Error");
		} else if (count > 0) {
			response.sendRedirect("verify.jsp");
			connection.close();
		}
	} catch (Exception e) {
		out.println(e);
		e.printStackTrace();
	}

	%>

</body>
</html>