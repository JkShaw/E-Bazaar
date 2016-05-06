<html>
	<head>
		<title>Shopping Cart</title>
		<link rel="stylesheet" type="text/css" href="CSS/cartCSS.css">
		<!--- jQuery plugin--->
		<script type="text/javascript" src="jquery-2.1.1.js"></script>
		<!--- jQuery-ui plugins--->
		<script src="CSS/custom_theme/external/jquery/jquery.js"></script>
		<script src="CSS/custom_theme/jquery-ui.js"></script>
		<link type="text/css" href="CSS/custom_theme/jquery-ui.css" rel="stylesheet">
		<script type="text/css">
			$( "#button" ).button();
		</script>

	</head>
	<body background="yellow">
		<fieldset>
			<legend>My Cart</legend>
		<table>
			<tr>
				<th colspan="2" id="th1">Item</th>
				<th id="th2">Unit Price</th>
				<th>Quantity</th>
				<th>Subtotal</th>
				<th>Remove</th>
			</tr>
		</table>
		</fieldset>
		<div id="total">
			Estimated Total: Rs.
			<input type="textbox" name="total" />
		</div>
		<div id="cartBottom">
			<button id="button">CONTINUE SHOPPING</button>
			<div>
				Need Help?
			</div>
			<button id="button">PLACE ORDER</button>
		</div>
	</body>
</html>
