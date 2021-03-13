<html>

<head>
	<link rel="stylesheet" href="css/register.css">
	<title>Student Registration form</title>
</head>
<body>
<font color="red" >${errorMessage}</font>

<div class="split left" ">
	<div class="centered">
	<img  src="https://i.pinimg.com/originals/ef/ab/45/efab45ba636c95d3900d3014c5adf82d.png">
	</div>
</div>

<div class="split right">
	<div class="centered">
		<div class="wrapper fadeInDown">
		<div id="formContent" >
		<!-- Tabs Titles -->
		<h2 class="inactive underlineHover "><a href="/login">Login</a></h2>
		<h2 class="active " ><a href="/register" class="active">Register</a> </h2>
		<h1 class="active ">Student Registration Form</h1>

		<form method="post">

			<input type="text" class="fadeIn third" id="name" name="name" placeholder="Your name" required="required">

			<input type="text" class="fadeIn third" id="surname" name="surname" placeholder="Your surname" required="required">

			<input type="text" class="fadeIn third" id="address" name="address" placeholder="Address" required="required">
			<br>
			<input type="number" class="fadeIn third" id="age" name="age" placeholder="Your current age" required="required">
			<br>
			<input type="email" class="fadeIn third" id="email" name="email" placeholder="Your email" required="required">
			<br>
			<input type="radio" class="fadeIn third"  id="male" name="gendre" value="male"  >
			<label for="male" style="color:white">Male</label>
			<input type="radio" class="fadeIn third" id="female" name="gendre" value="female">
			<label for="female" style="color:white">Female</label>
			<input type="radio" class="fadeIn third" id="other" name="gendre" value="other">
			<label for="other" style="color:white">Other</label><br>

			<input type="password" class="fadeIn third" id="password" name="password" placeholder="Your password" required="required">

			<input type="password" class="fadeIn third" id="confirmPassword" name="confirmPassword" placeholder="Retype password" required="required">

			<input type="submit"  style="margin-top:5%" />
		</form>
	</div>
</div>
</div>
</div>
</body>
</html>