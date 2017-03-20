<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>e_CaR-RaC_e</title>
<link rel="stylesheet" href="./myStyle.css" />
<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script type="text/javascript">
	$(document).keydown(function(event) {
		switch (event.keyCode) {
		case 27:
			resetCar();
			break;
		case 37:
			moveLeft();
			break;
		case 39:
			moveRight();
			break;
		case 38:
			moveUp();
			break;
		case 40:
			moveDown();
			break;
		}
	});
	
	function moveLeft() {
		var element = document.getElementById("car");
		element.style.left = parseInt(element.style.left) - 2 + '%';
	}

	function moveRight() {
		var element = document.getElementById("car");
		element.style.left = parseInt(element.style.left) + 2 + '%';

	}

	function moveUp() {
		var element = document.getElementById("car");
		element.style.top = parseInt(element.style.top) - 2 + '%';
	}

	function moveDown() {
		var element = document.getElementById("car");
		element.style.top = parseInt(element.style.top) + 2 + '%';
	} 
	

/* 	function moveLeft() {
		var element = document.getElementById("car");
		element.style.left = parseInt(element.style.left) - 5 + 'px';
	}

	function moveRight() {
		var element = document.getElementById("car");
		element.style.left = parseInt(element.style.left) + 5 + 'px';

	}

	function moveUp() {
		var element = document.getElementById("car");
		element.style.top = parseInt(element.style.top) - 5 + 'px';
	}

	function moveDown() {
		var element = document.getElementById("car");
		element.style.top = parseInt(element.style.top) + 5 + 'px';
	} */
</script>
</head>
<!-- <body background="background.png"> -->
<body>
	<!-- <div id="container">
		
			<img id="car" src="car.png"  style="position:absolute;left:48%; top:50%;" height="60" width="30">
		
		<img id="car" src="car.png"  style="position:absolute;left:0; top:0;" height="60" width="30">
		
	</div> -->
	<div class="container">
		<textarea class="bg">
		</textarea>
		<img id="car" src="police_car.png"  style="position:absolute;left:48%; top:50%;" height="70" width="50">
	</div>
	
</body>

</html>