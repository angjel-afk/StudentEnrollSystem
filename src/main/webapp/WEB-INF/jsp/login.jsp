<html>

<head>
	<link rel="stylesheet" href="css/login.css">
	<title>Login page</title>
</head>


<body>

<div class="split left">
	<div class="centered">
	<img  src="https://i.pinimg.com/originals/ef/ab/45/efab45ba636c95d3900d3014c5adf82d.png">
	</div>
</div>

<div class="split right">
	<div class="centered">
	<div class="wrapper fadeInDown" >
		<div id="formContent">
			<!-- Tabs Titles -->
			<h2 class="inactive underlineHover "><a href="/">Home</a></h2>
			<h2 class="inactive underlineHover "><a href="/register" class="active">Register</a> </h2>

			<!-- Icon -->

			<h1 style="color: white">Please login</h1>

			<form method="post">

				<input type="email" class="fadeIn third" id="email" name="email" placeholder="Your email" required="required">
				<br>
				<font color="red">${errorMessage}</font>
				<input type="password"  class="fadeIn third " id="password" name="password" placeholder="Your password" required="required">
				<br>

				<input type="submit" class="fadeIn fourth" style="margin-top:10%"  value="LOGIN" onClick="login">
			</form>
		</div>
	</div>
	</div>
</div>
	<script type="text/javascript">
		
		let txtuser = document.querySelector(".txtuser");
		let txtpass = document.querySelector(".txtpass");
		let submit = document.querySelector(".submit");
	
	localStorage.setItem("email", "${student.email}")
	localStorage.setItem("password", "${student.password}")
	
	let user = localStorage.getItem("email");
	let pass = localStorage.getItem("password");
	
		if(window.localStorage){
			console.log('Supported');
		}else{
			console.log('Not supported');
		}

	</script>
	
	

</body>
</html>