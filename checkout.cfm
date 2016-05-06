<!---
File Name : checkout.cfm
Description : Checkout after the order is placed, here billing ,shipping and payment information is taken and processed.
Date of creation : 30 September 2014
--->

<html>
	<head>
		<title>Checkout</title>

		<!--- jQuery plugin--->
		<script type="text/javascript" src="plugins/jquery-2.1.1.js"></script>

		<!--- jQuery-ui plugins--->
		<script type="text/javascript" src="CSS/custom_theme/external/jquery/jquery.js"></script>
		<script type="text/javascript" src="CSS/custom_theme/jquery-ui.js"></script>
		<link type="text/css" href="CSS/custom_theme/jquery-ui.css" rel="stylesheet">

		<!--- checkout page css --->
		<link type="text/css" href="CSS/checkoutCSS.css" rel="stylesheet">

		<!--- script for accordian --->
		<script type="text/javascript">
			$(document).ready(function(){
				$("#accordion").accordion({
        		collapsible: true,
        		heightStyle: "content",
				});

				$( "#button1" ).button();
				$( "#button2" ).button();
				$( "#button3" ).button();
				$( "#button4" ).button();
				$( "#button5" ).button();
				$( "#button6" ).button();

				<!--- Script for select menu to select state for billing information --->
				$( "#selectmenu1" ).selectmenu();

				<!--- Script for select menu to select country for billing information --->
				$( "#selectmenu2" ).selectmenu();

				<!--- Script for select menu to select state for shipping information --->
				$( "#selectmenu3" ).selectmenu();

				<!--- Script for select menu to select country for shipping information --->
				$( "#selectmenu4" ).selectmenu();

				<!--- Script for select menu to select month for cards expiration month information --->
				$( "#selectmenu5" ).selectmenu();

				<!--- Script to select expiration year for payment information--->
				$( "#spinner" ).spinner({min: 2015, max: 2050});
			});
		</script>

	</head>

	<body>
		<div id="accordion">
			<h3>
				<div class="number">1</div>
				Email Address
			</h3>
			<div>
				<input type="email" name="email" id="email" placeholder="Email Address" />
				<div>

					<!-- Button -->
					<button id="button1" class="buttons">Login</button>
					<button id="button2" class="buttons">Create Account</button>
					<button id="button3" class="buttons">Continue</button>
				</div>
			</div>

			<h3>
				<div class="number">2</div>
				Billing Information
			</h3>
			<div>
				<input type="text" name="fname" class="inputBlock" required="required" placeholder="First Name">
				<input type="text" name="lname" class="inputBlock" required="required" placeholder="Last Name">
				<input type="text" name="phone" class="inputBlock" required="required" placeholder="Phone">
				<input type="text" name="company" class="inputBlock" required="required" placeholder="Company Name">
				<input type="text" name="address1" class="inputBlock" required="required" placeholder="Address1">
				<input type="text" name="address2" class="inputBlock" placeholder="address2">

				<!--- select menu for state --->
				<select id="selectmenu1" class="inputBlock" >
					<option>Karnataka</option>
					<option>Orrisa</option>
					<option selected="selected">Maharashtra</option>
					<option>Bihar</option>
					<option>Haryana</option>
				</select>
				<input type="text" name="pin" class="inputBlock" placeholder="pin">

				<!--- select menu for country --->
				<select id="selectmenu2" class="inputBlock" >
					<option>Australia</option>
					<option>Switzerland</option>
					<option selected="selected">India</option>
					<option>China</option>
					<option>Sweden</option>
				</select>
				<input type="checkbox" name="sameShippingAddress" id="sameShippingAddress">SAME AS SHIPPING ADDRESS<br>
				<button id="button4" class="buttons">Continue</button>
			</div>

			<!--- Shipping information --->
			<h3>
				<div class="number">3</div>
				Shipping Information
			</h3>
			<div>
				<input type="text" name="fname" class="inputBlock" required="required" placeholder="First Name">
				<input type="text" name="lname" class="inputBlock" required="required" placeholder="Last Name">
				<input type="text" name="phone" class="inputBlock" required="required" placeholder="Phone">
				<input type="text" name="company" class="inputBlock" required="required" placeholder="Company Name">
				<input type="text" name="address1" class="inputBlock" required="required" placeholder="Address1">
				<input type="text" name="address2" class="inputBlock" placeholder="address2">

				<!--- select menu for state --->
				<select id="selectmenu3" class="inputBlock" >
					<option>Karnataka</option>
					<option>Orrisa</option>
					<option selected="selected">Maharashtra</option>
					<option>Bihar</option>
					<option>Haryana</option>
				</select>
				<input type="text" name="pin" class="inputBlock" placeholder="pin">

				<!--- select menu for country --->
				<select id="selectmenu4" class="inputBlock" >
					<option>Australia</option>
					<option>Switzerland</option>
					<option selected="selected">India</option>
					<option>China</option>
					<option>Sweden</option>
				</select>
				<button id="button4" class="buttons">Continue</button>
			</div>

			<!--- Payment information --->
			<h3>
				<div class="number">4</div>
				Payment Information
			</h3>
			<div>
				<input type="text" name="cardNumber" id="cardNumber" class="inputBlock" required="required" placeholder="Card Number">

				<!--- Select menu for cards expiration month--->
				<table>
					<tr>
						<td>
							<select id="selectmenu5" class="expiryDate">
								<option>Jan</option>
								<option>Feb</option>
								<option selected="selected">Mar</option>
								<option>Apr</option>
								<option>May</option>
								<option>Jun</option>
								<option>July</option>
								<option>Aug</option>
								<option>Sep</option>
								<option>Oct</option>
								<option>Nov</option>
								<option>Dec</option>
							</select>
						</td>
						<td>
							<!--- Spinner for cards expiration year with minimum value 2015 & maximum value 2050--->
							<input id="spinner">
						</td>
						<td>
							<button id="button5" class="buttons">Exp Date</button>
						</td>
					</tr>
				</table>
				<button id="button4" class="buttons">Continue</button>
			</div>

			<!--- Finalize order --->
			<h3>
				<div class="number">5</div>
				Finalize Order
			</h3>
			<div>
				<button id="button6" class="buttons">Complete Order</button>
			</div>
		</div>
	</body>
</html>