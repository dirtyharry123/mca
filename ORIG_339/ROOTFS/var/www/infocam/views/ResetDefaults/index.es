

public dynamic class ResetDefaults_indexView extends View {
    function ResetDefaults_indexView(c: Controller) {
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
		<form method=\"post\" name=\"defaults\" action=\"/infocam/ResetDefaults/Save/\" onsubmit=\"doWarning()\">
			<div class=\"cuerpoder V1N\">
				<p><strong>Application defaults</strong></p>
				<p>Resets system password and Card Sharing settings.</p>
				<div class=\"clear\"></div>
				<div class=\"txtform V1N\"></div>
				<div class=\"campoform\">
					<input type=\"submit\" name=\"save\" id=\"save\" value=\"Application Defaults\" />
				</div><div class=\"clear\"></div>
				
				<p><strong>Factory defaults</strong></p>
				<p>Resets both application and network/email settings.</p>
				<div class=\"clear\"></div>
				<div class=\"txtform V1N\"></div>
				<div class=\"campoform\">
					<input type=\"submit\" name=\"save\" id=\"save\" value=\"Factory Defaults\" />
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

function doWarning(){
	alert(\"Network connectivity may be lost. If you are not properly redirected check configuration in Common Interface.\");
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
