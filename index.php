<?php
session_start();
ob_start();
?>
<!DOCTYPE HTML>
<html>
<head>
	<title>Jarkom App</title>
	<!-- Custom Theme files -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<!-- Custom Theme files -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Square login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<!--Google Fonts-->
	<link href='//fonts.googleapis.com/css?family=Titillium+Web:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<!--Google Fonts-->
</head>
<body style="background-image:url('images/bg.png');background-size:cover;">
	<!--header start here-->
	<div class="login-form">
		<center><h3 style='color:#fff'>Perancangan Aplikasi Media Pembelajaran Mata Pelajaran Jaringan Komputer Berbasis Android</h3></center>
		<h1 style='color:#fff'>Login Administrator</h1>
		<?php
		if(isset($_SESSION['success'])){
			if($_SESSION['success']==1){
				echo "<center><p style='color:white;font-weight:bold;'>".$_SESSION['message']."</p></center>";
			} else {
				echo "<center><p style='color:white;font-weight:bold;'>".$_SESSION['message']."</p></center>";
			}
			unset($_SESSION['success']);
		}
		?>
		<div class="login-top">
			<form method="post" action="home/login.php">
				<div class="login-ic" style='color:#000'>
					<i style='color:#000'></i>
					<input type="text" style='color:#000' autocomplete="off" name="username" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}"/>
					<div class="clear"> </div>
				</div>
				<div class="login-ic">
					<i class="icon"></i>
					<input type="password" style='color:#000' name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"/>
					<div class="clear"> </div>
				</div>

				<div class="log-bwn">
					<input type="submit" style='background:#0f4a92;color:#000' value="Login" >
				</div>
			</form>
		</div>
		<p class="copy">© 2022 Jarkom App. All rights reserved | Design by  <a href="#" target="_blank">Jurendi</a></p>
	</div>
	<!--header start here-->
</body>
</html>
