

public dynamic class ChangePassword_indexView extends View {
    function ChangePassword_indexView(c: Controller) {
        super(c)
    }

    override public function render() {

write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
	<meta name=\"Language\" content=\"ES\">
	<meta name=\"Description\" content=\"InfoCam\">
	<meta name=\"keywords\" content=\"InfoCam\">
	<meta name=\"Copyright\" content=\"InfoCam\">
	");
stylesheet(["/infocam/web/style/style.css" ]); 
write("
	");
stylesheet(["/infocam/web/style/typo.css" ]); 
write("
</head>
<body>
	<div class=\"cabecera\">
		<div class=\"cabeceraCont\">
			<div class=\"logo\"></div>
			<div class=\"contmenu\">
				<div class=");

write("" + ((request.url.indexOf("Network") == -1) ? "menu" : "menuSelected" ));

write("><a href=\"/infocam/Network\" class=");

write("" + ((request.url.indexOf("Network") == -1) ? "V2A" : "V3A" ));

write(">Network</a></div>
				<div class=");

write("" + ((request.url.indexOf("Wireless") == -1) ? "menu" : "menuSelected" ));

write("><a href=\"/infocam/Wireless\" class=");

write("" + ((request.url.indexOf("Wireless") == -1) ? "V2A" : "V3A" ));

write(">Wireless</a></div>
				<div class=");

write("" + ((request.url.indexOf("Email") == -1) ? "menu" : "menuSelected" ));

write("><a href=\"/infocam/Email\" class=");

write("" + ((request.url.indexOf("Email") == -1) ? "V2A" : "V3A" ));

write(">E-mail</a></div>
				<div class=");

write("" + ((request.url.indexOf("CardSharing") == -1) ? "menu" : "menuSelected" ));

write("><a href=\"/infocam/CardSharing\" class=");

write("" + ((request.url.indexOf("CardSharing") == -1) ? "V2A" : "V3A" ));

write(">Card Sharing</a></div>
				<div class=");

write("" + ((request.url.indexOf("System") == -1) ? "menu" : "menuSelected" ));

write("><a href=\"/infocam/System\" class=");

write("" + ((request.url.indexOf("System") == -1) ? "V2A" : "V3A" ));

write(">System</a></div>
				<div class=\"clear\"></div>
			</div>
			<div class=\"clear\"></div>
		</div>
	</div>
	<div class=\"margenBottom20\"></div>
	");

write("<div class=\"contCuerpo\">
	<div class=\"cuerpoTop\"></div>
	<div class=\"cuerpo\"><strong>System</strong>
		<div class=\"cuerpolinea\"></div>
		<div class=\"cuerpoizq\">
			<ul>
				<li><a href=\"/infocam/ChangePassword\" title=\"Change Admin Password\" class=\"V1N\">Change Admin Password</a></li>
				<li><a href=\"/infocam/ResetDefaults\" title=\"Reset Defaults\" class=\"V1N\">Reset Defaults</a></li>
				<li><a href=\"/infocam/Upgrade\" title=\"Upgrade\" class=\"V1N\">Upgrade</a></li>
			</ul>	
		</div>
		<form method=\"post\" name=\"password\" action=\"/infocam/ChangePassword/Save/\" onsubmit=\"return checkValues()\">
			<div class=\"cuerpoder V1N\">
				<p><strong>Change Admin Password</strong></p>
				<p>Please complete the following fields:</p>
				<div class=\"txtform V1N\">New Password</div>
				<div class=\"campoform V1N\">
					<label>
						<input type=\"password\" name=\"newPassword\" id=\"newPassword\" />
					</label>
				</div><div class=\"clear\"></div>
				<div class=\"txtform V1N\">Confirm Password</div>
				<div class=\"campoform V1N\">
					<label>
						<input type=\"password\" name=\"confirmPassword\" id=\"confirmPassword\" />
					</label>

				</div><div class=\"clear\"></div>

				<div class=\"txtform V1N\"></div>
				<div class=\"campoform\">
					<input type=\"submit\" name=\"save\" id=\"save\" value=\"Save\" />
				</div><div class=\"clear\"></div>

				<p><strong>");

write("" + resultMessage);

write("</strong></p>

			</div>
		</form>
		<div class=\"clear\"></div>
	</div>

	<div class=\"cuerpoBot\"></div>
</div>

<script type=\"text/javascript\">
<!--

function checkValues(){
	var invalid = \" \";
	var minLength = 6;
	var pw1 = document.password.newPassword.value;
	var pw2 = document.password.confirmPassword.value;

	if (pw1 == '' || pw2 == '') {
		alert('Please enter your password twice.');
		return false;
	}
	if (document.password.newPassword.value.length < minLength) {
		alert('Your password must be at least ' + minLength + ' characters long. Try again.');
		return false;
	}
	if (document.password.newPassword.value.indexOf(invalid) > -1) {
		alert(\"Sorry, spaces are not allowed.\");
		return false;
	}
	else {
		if (pw1 == pw2) {
			return true;
		}
		else {
			alert (\"You did not enter the same new password twice. Please re-enter your password.\");
			return false;
		}
	}
}

//-->
</script>");

write("
	<div class=\"margenBottom20\"></div>
</body>
</html>
");

    }
}
