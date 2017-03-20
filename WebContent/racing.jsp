<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>e_CaR-RaC_e</title>
<link rel="stylesheet" href="./myStyle.css" />
<link rel="icon" href="car.png" type="image/png">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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
		$("#car0").stop().animate({
			top : "-=10px"
		}, 2000, ifCollision());
	}

	function moveRight() {
		var element = document.getElementById("car");
		element.style.left = parseInt(element.style.left) + 2 + '%';
		$("#car0").stop().animate({
			top : "-=10px"
		}, 2000, ifCollision());
	}

	function moveUp() {
		var element = document.getElementById("car");
		element.style.top = parseInt(element.style.top) - 2 + '%';
		/*attempt to move other car*/
		$("#car0").stop().animate({
			top : "+=10px"
		}, 2000, ifCollision());
	}

	function moveDown() {
		var element = document.getElementById("car");
		element.style.top = parseInt(element.style.top) + 2 + '%';
		$("#car0").stop().animate({
			top : "-=10px"
		}, 2000, ifCollision());
	}
	
	function ifCollision() {
		console.log("checking collision...");
		var car = $( "#car" );
		var positionOfCar = car.position();
		var leftOfCar = positionOfCar.left;
		var topOfCar = positionOfCar.top;
		
		console.log( "left of car: " + positionOfCar.left + ", top of car: " + positionOfCar.top);
		
		var car0 = $( "#car0" );
		var positionOfCar0 = car0.position();
		var leftOfCar0 = positionOfCar0.left;
		var topOfCar0 = positionOfCar0.top;
		
		console.log( "left of car 0: " + positionOfCar0.left + ", top of car 0: " + positionOfCar0.top);
		
		
		if (Math.abs(leftOfCar - leftOfCar0) < 40 && Math.abs(topOfCar - topOfCar0) < 40) {
			alert("Caught!!");
		}
	}
</script>
</head>

<body>

	<div class="container">
		<textarea class="bg">
		</textarea>
		<img id="car" src="police_car.png"
			style="position: absolute; left: 48%; top: 400%;" height="70"
			width="50">
		<!-- adding another car -->
		<img id="car0" src="car.png"
			style="position: absolute; left: 30%; top: 0" height="60" width="30">
	</div>

</body>

</html>