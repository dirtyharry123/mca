��         ܇ �� � ejs views/Email/index.es public dynamic class Email_indexView extends View { internal-0 ejs.db ejs.web Email_indexView public     function Email_indexView(c: Controller) {         super(c)     } -constructor- c private Controller     override public function render() { write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"> <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="Language" content="ES">
	<meta name="Description" content="InfoCam">
	<meta name="keywords" content="InfoCam">
	<meta name="Copyright" content="InfoCam">
	 write 	"); stylesheet(["/infocam/web/style/style.css" ]);  /infocam/web/style/style.css  stylesheet write(" 
	 stylesheet(["/infocam/web/style/typo.css" ]);  /infocam/web/style/typo.css </head> 
</head>
<body>
	<div class="cabecera">
		<div class="cabeceraCont">
			<div class="logo"></div>
			<div class="contmenu">
				<div class= 				<div class="); write("" + ((request.url.indexOf("Network") == -1) ? "menu" : "menuSelected" )); request url Network indexOf menu menuSelected write("><a href=\"/infocam/Network\" class="); ><a href="/infocam/Network" class= write("" + ((request.url.indexOf("Network") == -1) ? "V2A" : "V3A" )); V2A V3A write(">Network</a></div> >Network</a></div>
				<div class= write("" + ((request.url.indexOf("Wireless") == -1) ? "menu" : "menuSelected" )); Wireless write("><a href=\"/infocam/Wireless\" class="); ><a href="/infocam/Wireless" class= write("" + ((request.url.indexOf("Wireless") == -1) ? "V2A" : "V3A" )); write(">Wireless</a></div> >Wireless</a></div>
				<div class= write("" + ((request.url.indexOf("Email") == -1) ? "menu" : "menuSelected" )); Email write("><a href=\"/infocam/Email\" class="); ><a href="/infocam/Email" class= write("" + ((request.url.indexOf("Email") == -1) ? "V2A" : "V3A" )); write(">E-mail</a></div> >E-mail</a></div>
				<div class= write("" + ((request.url.indexOf("CardSharing") == -1) ? "menu" : "menuSelected" )); CardSharing write("><a href=\"/infocam/CardSharing\" class="); ><a href="/infocam/CardSharing" class= write("" + ((request.url.indexOf("CardSharing") == -1) ? "V2A" : "V3A" )); write(">Card Sharing</a></div> >Card Sharing</a></div>
				<div class= write("" + ((request.url.indexOf("System") == -1) ? "menu" : "menuSelected" )); System write("><a href=\"/infocam/System\" class="); ><a href="/infocam/System" class= write("" + ((request.url.indexOf("System") == -1) ? "V2A" : "V3A" )); write(">System</a></div> >System</a></div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="margenBottom20"></div>
	 write("<div class=\"contCuerpo\"> <div class="contCuerpo">
	<div class="cuerpoTop"></div>
	<div class="cuerpo">
		<strong>E-mail</strong>
		<div class="cuerpolinea"></div>
		<div class="cuerpoizq">
			<ul>
				<li>Settings</li>
			</ul>	
		</div>
		<form method="post" name="email" action="/infocam/Email/Save/" onsubmit="return checkValues()">
			<div class="cuerpoder V1N">
				<p><strong>Settings</strong></p>
				<p>Please fill the following fields:</p>
				
				<div class="txtform V1N">POP Server</div>
				<div class="campoform V1N">
					<label>
						<input type="text" name="server" id="server" value=" 						<input type=\"text\" name=\"server\" id=\"server\" value=\""); write("" + localServer); localServer write("\"/> "/>
					</label>
				</div>

				<div class="clear"></div>
				<div class="txtform V1N">Port</div>
				<div class="campoform V1N">
					<label>
						<input type="text" name="serverport" id="port" value=" 						<input type=\"text\" name=\"serverport\" id=\"port\" value=\""); write("" + localPort); localPort "/>
					</label>

				</div>
				
				<div class="clear"></div>
				<div class="txtform V1N">E-mail address</div>
				<div class="campoform V1N">
					<label>
						<input type="text" name="email" id="email" value=" 						<input type=\"text\" name=\"email\" id=\"email\" value=\""); write("" + localEmail); localEmail "/>
					</label>
				</div>

				<div class="clear"></div>				
				<div class="txtform V1N">User</div>
				<div class="campoform V1N">
					<label>
						<input type="text" name="user" id="user" value=" 						<input type=\"text\" name=\"user\" id=\"user\" value=\""); write("" + localUser); localUser "/>
					</label>

				</div>

				<div class="clear"></div>
				<div class="txtform V1N">Password</div>
				<div class="campoform V1N">
					<label>
						<input type="password" name="password" id="password" value=" 						<input type=\"password\" name=\"password\" id=\"password\" value=\""); write("" + localPassword); localPassword "/>
					</label>

				</div>

				<div class="clear"></div>
				<div class="txtform V1N">Check Time</div>
				<div class="campoform V1N">
					<label>
						<select name="check" id="check">
							<option value="0"  							<option value=\"0\" "); write("" + min5Status); min5Status write(">5 min</option> >5 min</option>
							<option value="1"  							<option value=\"1\" "); write("" + min15Status); min15Status write(">15 min</option> >15 min</option>
							<option value="2"  							<option value=\"2\" "); write("" + min30Status); min30Status write(">30 min</option> >30 min</option>
							<option value="3"  							<option value=\"3\" "); write("" + day1Status); day1Status write(">1 Day</option> >1 Day</option>
						</select>
					</label>
				</div>

				<div class="clear"></div>
				<div class="txtform V1N"></div>
				<div class="campoform V1N">
					<input type="submit" name="save" id="save" value="Save" />
				</div>
				<div class="clear"></div>
				
				<p><strong> 				<p><strong>"); write("" + resultMessage); resultMessage write("</strong></p> </strong></p>
				
			</div>
		</form>
		<div class="clear"></div>
	</div>

	<div class="cuerpoBot"></div>
</div>

<script type="text/javascript">
<!--

function checkValues()
{
	invalid = " "
	emailRegExp = new RegExp("^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")

	//Server address
	str = document.email.server.value
	if (str == ''){
		alert("Bad server address.");
		return false;
	}
	if (str.indexOf(invalid) > -1) {
		alert("Spaces are not allowed.");
		return false;
	}
	
	//Port
	str = document.email.port.value
	if (str == '')
		document.email.port.value = "25"
	else{
		n = parseInt(str,10)
		if (isNaN(n) || n <= 0){
			alert("Bad port value.");
			return false;
		}
	} 
	
	//Email Address
	str = document.email.email.value
	if (str == ''){
		alert("Bad email address.");
		return false;
	}
	if (!emailRegExp.test(str)){
		alert("Bad Email format.");
		return false;
	}
	
	//User
	str = document.email.user.value
	if (str == ''){
		alert("Bad user name value.");
		return false;
	}
	if (str.indexOf(invalid) > -1) {
		alert("Spaces are not allowed.");
		return false;
	}
	
	//Password
	str = document.email.user.value
	if (str == ''){
		alert("Bad password value.");
		return false;
	}
	if (str.indexOf(invalid) > -1) {
		alert("Spaces are not allowed.");
		return false;
	}
	
	return true;
}

//-->
</script> </script>"); 	<div class=\"margenBottom20\"></div> 
	<div class="margenBottom20"></div>
</body>
</html>
 render Email_indexView-initializer -initializer- View clone Function intrinsic Object deep Boolean get iterator Iterator getValues length Number toJSON String toString controller View-initializer Void getNextId aform action record options connector alink text button value buttonName buttonLink chart initialData Array checkbox field choice endform form image src imageLink input label link extlink list choices mail nameText address progress radio script u -hoisted-3 status table data tabs textarea tree XML flash kinds cflash msgs kind -hoisted-4 -hoisted-5 msg -hoisted-6 -hoisted-7 formErrors [ejs.web::View,private] model errors e -hoisted-2 createSession timeout destroySession html args makeUrl id redirectUrl code redirect setCookie name lifetime path secure setHeader key allowMultiple setHttpCode setMimeType format writeHtml writeRaw d addHelper fun overwrite getConnector connectorName Error setOptions getValue typeName fmt part date --fun_26399-- currency --fun_26433-- number --fun_26463-- getOptions result option mapped pivot grid headers i row r -hoisted-8 filter -hoisted-1 found f currentModel Record config nextId block_0000_0 -block- __initializer__ default ��;  ���v �  .�  2
4���3��#:��  	�����
� �u� ��    �2
$�2
�U���2
$�2
&�} �8U��U�C���2
*�2
(�2
*�U���2
,�} �8U��U�C���2
<�2
.�2
0�U���2
<�2
@�U�x��z� U�� �D�$U�=U� ��2
D�U���2
H�U�x��z� U�� �D�$U�=U� ��2
N�2
L�U���2
N�2
R�U�x��z� U�� �D�$U�=U� ��2
V�U���2
Z�U�x��z� U�� �D�$U�=U� ��2
`�2
^�U���2
`�2
d�U�x��z� U�� �D�$U�=U� ��2
h�U���2
l�U�x��z� U�� �D�$U�=U� ��2
r� 2
p� U� ��2
r�2
v�!U�x��z� U�"� �D�$U�=U� ��2
z�"U�#��2
~�$U�x��z� U�"� �D�$U�=U� ��2
��%2
��%U�%��2
��2
��&U�x��z� U�'� �D�$U�=U� ��2
��'U�(��2
��(U�x��z� U�'� �D�$U�=U� ��2
��)2
��)U�*��2
��2
��,2
��,U�-��2
��62
��7U�x�7� ��2
��82
��8U�8��2
��;2
��<U�x�=� ��2
��82
��8U�=��2
��@2
��AU�x�B� ��2
��82
��8U�B��2
��E2
��FU�x�G� ��2
��82
��8U�G��2
��J2
��LU�x�L� ��2
��82
��8U�L��2
��P2
��PU�x�Q� ��2
��Q2
��QU�Q��2
��R2
��RU�x�S� ��2
��S2
��SU�S��2
��T2
��TU�x�U� ��2
��U2
��UU�U��2
��V2
��WU�x�W� ��2
��W2
��WU�W��2
��\2
��\U�x�]� ��2
��]2
��]U�]��2
��s2
��2
��2
��sU�t���2
���� ���@ ~  2

�Z �2
�
��  �	�u�u ��   2
�2
��