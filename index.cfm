<!---
File Name : index.cfm
Description : index page
Date of creation : 29th sep 2014
--->

<!DOCTYPE html>
<html>
	<head>
		<!--- jQuery plugin--->
		<script type="text/javascript" src="plugins/jquery-2.1.1.js"></script>

		<!--- jQuery cycle2 plugin--->
		<script type="text/javascript" src="http://malsup.github.io/jquery.cycle2.js">

		<script src="http://malsup.github.io/jquery.cycle2.center.js"></script>
		<link rel="stylesheet" type="text/css" href="CSS/index.css" >
	</head>

	<body>
		<!--- includes header page--->
		<cfinclude template="includes/header.cfm">

		<div class="show">
			<div class="cycle-slideshow" id="slider"
    			data-cycle-fx="scrollHorz"
    			data-cycle-pause-on-hover="true"
    			data-cycle-speed="100"
				 data-cycle-center-horz=true
    data-cycle-center-vert=true
				>
    			<img src="images/rotate1.jpg">
    			<img src="images/rotate2.jpg">
    			<img src="images/rotate3.jpg">
    			<img src="images/rotate4.jpg">
				<img src="images/rotate5.jpg">
				<img src="images/rotate6.jpg">
				<img src="images/rotate7.jpg">
				<img src="images/rotate8.jpg">
			</div>
		</div>
		<!--- includes footer page--->
		<cfinclude template="includes/footer.cfm">
	</body>
</html>
