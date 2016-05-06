<!---
File Name : login.cfm
Description : login page for the users
Date of creation : 27 sep 2014
--->

<!DOCTYPE html>
<html>
	<head>
		<!--- jQuery plugin--->
		<script type="text/javascript" src="plugins/jquery-1.3.2.min.js"></script>
		<!--- jQuery form validation plugin--->
        <script type="text/javascript" src="plugins/jquery.validate.js"></script>
		<!--- CSS styling page--->
		<link rel="stylesheet" type="text/css" href="CSS/loginCSS.css">

		<!--- validation script--->
		<script type="text/javascript">
            jQuery(document).ready(function($){
                $("#loginForm").validate();
            });
        </script>
	</head>

    <body>
		<div id="box">
			<!--- login form --->
        	<form id="loginForm" method="get" action="">

					<div id="loginHeader">
						Login to E-Bazaar
					</div>

					<div id="loginBody">
						<div class="input">
                    		<input id="cemail" name="email" class="required email" placeholder="Email" />
                		</div>

						<div class="input">
                    		<input id="cpassword" name="cpassword" class="required password" placeholder="Password"/>
                		</div>

						<div class="input">
                    		<input class="submit" type="submit" value="Submit"/>
                		</div>

						<div>
							<!---onclick redirects to forget your password page --->
							<b><a href="##">Forget your password?</a></b>
						</div>

						<div>
							<!---onclick redirects to registration page --->
							<b><a href="##">Register</a></b>
						</div>
					</div>
        	</form>
		</div>
    </body>
</html>