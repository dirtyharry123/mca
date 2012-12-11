

public dynamic class Upgrade_indexView extends View {
    function Upgrade_indexView(c: Controller) {
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
		<form method=\"post\" name=\"upgrade\" action=\"/infocam/Upgrade/Save\" enctype=\"multipart/form-data\" onsubmit=\"return warning()\">
			<div class=\"cuerpoder V1N\">
				<p><strong>Upgrade</strong></p>
				<p>WARNING!!! Firmware upgrades will reset all your settings to defaults.</p>
				<p>Please select the .bin upgrade file:</p>
				<div class=\"txtform V1N\">Firmware File</div>
				<div class=\"campoform V1N\">
					<label>
						<input type=\"file\" name=\"theFile\" id=\"theFile\" accept=\"*.bin\"/> <br/>
					</label>
				</div><div class=\"clear\"></div>
				<div class=\"clear\"></div>

				<div class=\"txtform V1N\"></div>
				<div class=\"campoform\">
					<input type=\"submit\" name=\"save\" id=\"save\" value=\"Upgrade Now\" />
					<input type=\"reset\" name=\"reset\" id=\"reset\" value=\"Clear\" />
				</div><div class=\"clear\"></div>
			</div>
		</form>
		<div class=\"clear\"></div>
	</div>

	<div class=\"cuerpoBot\"></div>
</div>

<script type=\"text/javascript\">
<!--

function warning(){
	
	if (document.upgrade.theFile.value.length == 0){}
		alert(\"No file selected.\");
		return false;
	}
	if (document.upgrade.theFile.value.lastIndexOf(\".bin\") == -1){}
		alert(\"Bad file extension.\");	
		return false;
	}	
	if (confirm(\"Are you sure to perform the firmware upgrade?\")){
		alert(\"Upgrade may take some minutes. Please wait.\");
		return true;
	}
	else{
		return false;
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
