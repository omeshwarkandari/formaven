<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome!</title>
	
	<!-- Bootstrap itself -->
	<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="assets/css/font-awesome.css">
	<style type="text/css" media="screen">
		body {
			overflow: show;
			padding: 20px;
		}
	</style>
	
</head>

<body>
	<h1>Welcome!</h1>
	<form name="skl_form" class="form-inline" role="form" method="post" action="login_controller.jsp">
		<div class="form-group">
			<label class="" for="Login">Login &nbsp;&nbsp;</label> <input type="text" name="uid" class="form-control">
			<br/>Type in your first name<br/>
			<label class="" for="Password">Password &nbsp;&nbsp;</label> <input type="password" name="pwd" class="form-control">
			<br/>The password shoulb be 8-digits
		</div>
		<br><br>
		<a href="#" id="run_button" class="btn btn-success" onclick="skl_form.submit();">Your feedback matters!</a>
	</form>
	<br><br>"CICD Pipeline Test - V3"
</body>

</html>
