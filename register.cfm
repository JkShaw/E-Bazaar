<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>

		<!--- Stylesheet for the form --->
		<link rel="stylesheet" type="text/css" href="CSS\registrationCSS.css">

		<!--- Client side javascript validation of form --->
		<script type="text/javascript" src="JavaScript\registrationValidation.js" ></script>
	</head>

	<body background="crimson">
		<cfoutput>
			<div>
				<!--- Validate form fields and display mistakes--->
				<cfinclude template="validationCF.cfm">
			</div>

			<div id="regForm">

				<!--- Registration Form with validation on same page --->
				<form id="form" name="form" method="post" onSubmit = "return validate()" action="register.cfm" novalidate="novalidate">

					<!--- Hidden input field passed to check whether form is submmitted --->
					<input type="hidden" name="submitted" value="true">

					<!--- Form title/header --->
					<div id="header">Registration Form</div>
					<div id="userNameDiv">
						User Name<br/>
						<input type="text" id="uname" name="uname" value="#FORM.uname#" required="yes" placeholder="User Name" style="height: 25px;" onChange="unameValidation();" />
						<span id="unameMsg" class="errorMsg" >#unameError#</span>
					</div>

					<div id="passwdDiv">
						Password<br/>
						<input type="password" id="pass" name="pass" required="yes" placeholder="Password" style="height: 25px;" onChange="passwordValidation();" />
						<span id="passMsg" class="errorMsg">#passError#</span> <br/><br/>

						Confirm Password<br/>
						<input type="password" id="repass" name="repass" required="yes" placeholder="Confirm Password" style="height: 25px;" onChange="comparePassword();"/>
						<span id="repassMsg" class="errorMsg">#repassError#</span>
					</div>

					<div id="name">
						First Name <br/>
						<input type="text" id="fname" name="fname" placeholder="First Name" style="height: 25px;" required="yes" />
						<span id="fnameMsg" class="errorMsg">#fnameError#</span><br/>

						Last Name<br/>
						<input type="text" id="lname" name="lname" placeholder="Last Name" style="height: 25px;" required="yes" />
						<span id="lnameMsg" class="errorMsg">#lnameError#</span>
					</div>

					<!--Change HTML5 date to jQuery date -->
					<div id="dobDiv">
						DOB<br/>
						<input type="date" id="dob" name="dob" required="yes" style="height: 25px;" />
					</div>

					<div id="addressDiv">
						Address1 <br/>
						<input type="text" id="address1" name="address1" required="yes" style="height: 25px;" />
						<span id="address1Msg" class="errorMsg">#address1Error#</span><br/>

						Address2 <br/>
						<input type="text" id="address2" name="address2"/>
					</div>

					<div id="address2">
						City <br/>
						<input type="text" id="city" name="city" required="yes" placeholder="City" style="height: 25px;"/>
						<span class="errorMsg" id="cityMsg">#cityError#</span>
					</div>

					<div id="stateDiv">
						State <br/>
						<input type="text" id="state" name="state" required="yes" placeholder="State" style="height: 25px;"/>
						<span class="errorMsg" id="stateMsg">#stateError#</span>
					</div>

					<div id="pinDiv">
						Pin/Zip <br/>
						<input type="text" id="pin" name="pin" required="yes" placeholder="Pin"  onChange="pinValidation();" style="height: 25px;">
						<span class="errorMsg" id="pinMsg">#pinError#</span>
					</div>

					<div id="emailDiv">
						Email <br/>
						<input type="email" id="email" name="email" placeholder="example@gmail.com" required="yes" onChange="emailValidation();"  style="height: 25px;">
						<span class="errorMsg" id="emailMsg">#emailError#</span>
					</div>

					<div id="phoneDiv">
						Phone <br/>
						<input type="text" id="phone" name="phone" required="yes" placeholder="Phone Number"  onChange="phoneValidation();" style="height: 25px;" >
						<span id="phoneMsg" class="errorMsg">#phoneError#</span>
					</div>
			</div>
			<div id="submitDiv">
				<input type="submit" value="Submit" name="submit" style="height:35px; width:70px;">
			</div>
		</form>
	</div>
</cfoutput>
</body>
</html>