<cfparam name="FORM.uname" default="">
<cfparam name="unameError" type="string" default="">

<cfparam name="FORM.pass" default="">
<cfparam name="passError" default="">

<cfparam name="FORM.repass" default="">
<cfparam name="repassError" default="">

<cfparam name="FORM.security" default="">

<cfparam name="FORM.securityQA" default="">
<cfparam name="securityQAError" default="">

<cfparam name="FORM.fname" default="">
<cfparam name="fnameError" default="">

<cfparam name="FORM.lname" default="">
<cfparam name="lnameError" default="">

<cfparam name="FORM.gender" default="">
<cfparam name="FORM.marital" default="">
<cfparam name="FORM.dob" default="">
<cfparam name="FORM.occupation" default="">
<cfparam name="FORM.nationality" default="">

<cfparam name="FORM.address1" default="">
<cfparam name="address1Error" default="">

<cfparam name="FORM.address2" default="">

<cfparam name="FORM.city" default="">
<cfparam name="cityError" default="">

<cfparam name="FORM.state" default="">
<cfparam name="stateError" default="">

<cfparam name="FORM.pin" default="">
<cfparam name="pinError" default="">

<cfparam name="FORM.email" default="">
<cfparam name="emailError" default="">

<cfparam name="FORM.phone" default="">
<cfparam name="phoneError" default="">

<cfparam name="FORM.aboutMe" default="">

<cfparam name="errors" default="">

<cfset serverError=StructNew()>
<cfset serverError.unameBlank="The uname field cannot be left empty.">
<cfset serverError.unameOther="User name should be minimum 6 characters long. (Alphabets,Number, and only _ (underscore) is allowed ), it is case insensitive..">
<cfset serverError.passBlank="The password field cannot be left empty.">
<cfset serverError.passOther="Password should be between 5 to 8 characters long, containing atleast at least 1 number,1 upper case alphabet, 1 lower case alphabet and 1 special character">
<cfset serverError.repassBlank="The re-password field cannot be left empty.">
<cfset serverError.repassOther="Passwords do not match">
<cfset serverError.securityQABlank="The answer to the Security question cannot be left blank.">
<cfset serverError.fnameBlank="The First name field cannot be left empty.">
<cfset serverError.lnameBlank="The Last name field cannot be left empty.">
<cfset serverError.address1Blank="The address field cannot be left empty.">
<cfset serverError.cityBlank="The city field cannot be left empty.">
<cfset serverError.stateBlank="The state field cannot be left empty.">
<cfset serverError.pinBlank="The pin field cannot be left empty.">
<cfset serverError.pinOther="Pin/Zip  should be a   6 digit number.">
<cfset serverError.emailBlank="The email field cannot be left empty.">
<cfset serverError.emailOther="The E-mail is not valid">
<cfset serverError.phoneBlank="The phone field cannot be left empty.">
<cfset serverError.phoneOther="The phone number is not valid and has to be 10 digit numeric.">


<!--- Checks whether the form is submitted --->
<cfif structKeyExists(FORM,"submit")>
	<cfset errors=0>
	<!--- User name is required and has to be of specific pattern --->
	<cfif ISNULL(FORM.uname) or  FORM.uname eq ''>
		<cfset unameError="#serverError.unameBlank#">
		<cfset errors=1>
	<cfelseif NOT REfind("^[a-z0-9_]{6,18}$",FORM.uname)>
 		<cfset unameError="#serverError.unameOther#">
	</cfif>

	<!--- Password is required and has to be of specific pattern --->
	<cfif ISNULL(FORM.pass) or  FORM.pass eq ''>
				<cfset passError="#serverError.passBlank#">
	<cfelseif NOT REfind("^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{5,8}$",FORM.pass)>
 		<cfset passError="#serverError.passOther#">
	</cfif>

	<!--- Passwords and confirm passwords has to match --->
	<cfif ISNULL(FORM.repass) or  FORM.repass eq ''>
		<cfset repassError="#serverError.repassBlank#">
	<cfelseif (FORM.pass neq FORM.repass)>
		<cfset repassError="#serverError.repassOther#">
 	</cfif>

	<!--- If security question selected than answer is must --->
	<cfif val(FORM.security) gt 0  and  ((FORM.securityQA eq '') or ISNULL(FORM.securityQA)) >
		<cfset securityQAError="#serverError.securityQABlank#">
	</cfif>

	<!--- First name is must --->
	<cfif ISNULL(FORM.fname) or  FORM.fname eq ''>
		<cfset fnameError="#serverError.fnameBlank#">
 	</cfif>

	<!--- Last name is must --->
	<cfif ISNULL(FORM.lname) or  FORM.lname eq ''>
		<cfset lnameError="#serverError.lnameBlank#">
 	</cfif>

	<!--- Check date validity
	<cfif ISDate(FORM.dob)>
		<cfset errors = errors & "<li>The date of birth field is not valid.</li>">
 	</cfif> --->

	<!--- address is required --->
	<cfif ISNULL(FORM.address1) or  FORM.address1 eq ''>
		<cfset address1Error="#serverError.address1Blank#">
 	</cfif>

	<!--- City is must --->
	<cfif ISNULL(FORM.city) or  FORM.city eq ''>
		<cfset cityError="#serverError.cityBlank#">
	</cfif>

	<!--- State is must --->
	<cfif ISNULL(FORM.state) or  FORM.state eq ''>
		<cfset stateError="#serverError.stateBlank#">
 	</cfif>

	<!--- Pin is must and has to be 6 digits numeric --->
	<cfif ISNULL(FORM.pin) or  FORM.pin eq ''>
		<cfset pinError="#serverError.pinBlank#">
	<cfelseif (NOT ISNUmeric(FORM.pin)) or (NOT REfind("^[0-9]{6}$",FORM.pin)) >
		<cfset pinError="#serverError.pinOther#">
 	</cfif>

	<!--- Email is required --->
	<cfif ISNULL(FORM.email) or  FORM.email eq ''>
		<cfset emailError="#serverError.emailBlank#">
	<cfelseif (NOT ISValid("email",FORM.email)) >
		<cfset emailError="#serverError.emailOther#">
 	</cfif>

	<!--- Phone is required and has to be 10 digit numeric --->
	<cfif ISNULL(FORM.phone) or  FORM.phone eq ''>
		<cfset phoneError="#serverError.phoneBlank#">
	<cfelseif (NOT ISNUmeric(FORM.phone)) or (NOT REfind("^[0-9]{10}$",FORM.phone)) >
		<cfset phoneError="#serverError.phoneOther#">
 	</cfif>
</cfif>

<cfif structKeyExists(FORM,"submit") AND (errors eq 1)>
	<cfoutput>
		#errors#
	</cfoutput>
<cfelseif structKeyExists(FORM,"submit") AND (errors EQ '')>
	<!--- Insert data into the database --->
	<cfoutput>
	<cfquery name="InsertData" dataSource="userdetails">
		INSERT INTO userData
		( uname, pass, security, securityQA, fname, lname, gender, marital, dob, occupation,
		  nationality, address1, address2, city, state, pin, email, phone, aboutMe)
		VALUES
		( 	"#FORM.uname#",
			"#FORM.pass#",
			"#FORM.security#",
			"#FORM.securityQA#",
			"#FORM.fname#",
			"#FORM.lname#",
			"#FORM.gender#",
			"#FORM.marital#",
			"#FORM.dob#",
			"#FORM.occupation#",
			"#FORM.nationality#",
			"#FORM.address1#",
			"#FORM.address2#",
			"#FORM.city#",
			"#FORM.state#",
			"#FORM.pin#",
			"#FORM.email#",
			"#FORM.phone#",
			"#FORM.aboutMe#" )
	</cfquery>
	</cfoutput>

	Success
	<cflocation url="http://localhost/RegisterCF/success.cfm">
</cfif>

