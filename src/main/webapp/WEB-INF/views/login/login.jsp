<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/signin.css" rel="stylesheet">


<style>
	.bd-placeholder-img {
    	font-size: 1.125rem;
    	text-anchor: middle;
    	-webkit-user-select: none;
    	-moz-user-select: none;
    	-ms-user-select: none;
    	user-select: none;
  	}

  	@media (min-width: 768px) {
    	.bd-placeholder-img-lg {
      		font-size: 3.5rem;
    	}
  	}
</style>
</head>
<body class="text-center">

	<form class="form-signin" id="loginform" name="loginform" method="post" action="">
  		<img class="mb-4" src="./img/bootstrap-solid.svg" alt="" width="72" height="72">
  		<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
  		<label for="inputEmail" class="sr-only" >Email address</label>
		<input type="email" id="email" name="email" class="form-control" placeholder="Email address" required autofocus>
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="pwd" name="pwd" class="form-control" placeholder="Password" required>
  		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	</form>
</body>
</html>



