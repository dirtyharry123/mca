��         �� �� ʊ ejs views/Network/index.es public dynamic class Network_indexView extends View { internal-0 ejs.db ejs.web Network_indexView public     function Network_indexView(c: Controller) {         super(c)     } -constructor- c private Controller     override public function render() { write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"> <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	 write("<div class=\"contCuerpo\"> <div class="contCuerpo">
	<div class="cuerpoTop"></div>
	<div class="cuerpo">
		<strong>Network</strong>
		<div class="cuerpolinea"></div>
		<div class="cuerpoizq">
			<ul>
				<li>Settings</li>
			</ul>	
		</div>
		<form method="post" name="network" action="/infocam/Network/Save" onsubmit="return checkValues()">
			<div class="cuerpoder V1N">
				<p><strong>Settings</strong></p>
				<p>Please complete the following fields:</p>

				<div class="txtform V1N">
					<label><input type="radio" name="mode" id="dhcp" value="DHCP" onclick="disableTextBoxes()"  					<label><input type=\"radio\" name=\"mode\" id=\"dhcp\" value=\"DHCP\" onclick=\"disableTextBoxes()\" "); write("" + isDHCPchecked); isDHCPchecked write("/>DHCP</label> />DHCP</label>
				</div>
				<div class="campoform V1N"></div>
				<div class="clear"></div>

				<div class="txtform V1N">
					<label><input type="radio" name="mode" id="static" value="STATIC" onclick="enableTextBoxes()"  					<label><input type=\"radio\" name=\"mode\" id=\"static\" value=\"STATIC\" onclick=\"enableTextBoxes()\" "); write("" + isStaticIPchecked); isStaticIPchecked write("/>Static IP</label> />Static IP</label>
				</div>
				<div class="campoform V1N"></div>
				<div class="clear"></div>

				<div class="txtformright V1G">IP</div>
				<div class="campoform">
					<label>
						<input type="text" name="ip" id="ip" value=" 						<input type=\"text\" name=\"ip\" id=\"ip\" value=\""); write("" + localIP); localIP write("\" "); "  write("" + IPstatus); IPstatus write("/> />
					</label>
				</div>
				<div class="clear"></div>

				<div class="txtformright V1G">Netmask</div>
				<div class="campoform">
					<label>
						<input type="text" name="netmask" id="netmask" value=" 						<input type=\"text\" name=\"netmask\" id=\"netmask\" value=\""); write("" + localNetmask); localNetmask write("" + netmaskStatus); netmaskStatus />
					</label>
				</div>
				<div class="clear"></div>

				<div class="txtformright V1G">Gateway</div>
				<div class="campoform">
					<label>
						<input type="text" name="gateway" id="gateway" value=" 						<input type=\"text\" name=\"gateway\" id=\"gateway\" value=\""); write("" + localGateway); localGateway write("" + gatewayStatus); gatewayStatus />
					</label>
				</div>
				<div class="clear"></div>

				<div class="txtformright V1G">DNS 1</div>
				<div class="campoform">
					<label>
						<input type="text" name="dns1" id="dns1" value=" 						<input type=\"text\" name=\"dns1\" id=\"dns1\" value=\""); write("" + localDNS1); localDNS1 write("" + dns1Status); dns1Status />
					</label>
				</div>
				<div class="clear"></div>

				<div class="txtformright V1G">DNS2</div>
				<div class="campoform">
					<label>
						<input type="text" name="dns2" id="dns2" value=" 						<input type=\"text\" name=\"dns2\" id=\"dns2\" value=\""); write("" + localDNS2); localDNS2 write("" + dns2Status); dns2Status />
					</label>
				</div>
				<div class="clear"></div>

				<div class="txtform V1N"></div>
				<div class="campoform">
					<input type="submit" name="save" id="save" value="Save"/>
				</div>
				<div class="clear"></div>
				
				<p><strong> 				<p><strong>"); write("" + resultMessage); resultMessage write("</strong></p> </strong></p>
				
			</div>
		</form	>
		<div class="clear"></div>
	</div>
	<div class="cuerpoBot"></div>
</div>

<script type="text/javascript">
<!--

function enableTextBoxes()
{
	document.network.ip.disabled = false;
	document.network.netmask.disabled = false;
	document.network.gateway.disabled = false;
	document.network.dns1.disabled = false;
	document.network.dns2.disabled = false;
}

function disableTextBoxes()
{
	document.network.ip.disabled = true
	document.network.netmask.disabled = true
	document.network.gateway.disabled = true
	document.network.dns1.disabled = true
	document.network.dns2.disabled = true
}

function checkValues()
{
	ipRegExp = new RegExp("^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})$")

	if (document.network.static.checked){	
		if (! ipRegExp.test(document.network.ip.value)){
			alert("Bad IP Value");
			return false;
		}
		else if (! ipRegExp.test(document.network.netmask.value)){
			alert("Bad Netwask Value");
			return false;
		}
		else if (! ipRegExp.test(document.network.gateway.value)){
			alert("Bad Gateway Value");
			return false;
		}
		else if (! ipRegExp.test(document.network.dns1.value)){
			alert("Bad Primary DNS Value");
			return false;
		}
		else if (! ipRegExp.test(document.network.dns2.value)){
			alert("Bad Secondary DNS Value");
			return false;
		}	
	}

	alert("You are going to be redirected.");
	return true;
}

//-->
</script>
 "); 	<div class=\"margenBottom20\"></div> 
	<div class="margenBottom20"></div>
</body>
</html>
 render Network_indexView-initializer -initializer- View clone Function intrinsic Object deep Boolean get iterator Iterator getValues length Number toJSON String toString controller View-initializer Void getNextId aform action record options connector alink text button value buttonName buttonLink chart initialData Array checkbox field choice endform form image src imageLink input label link extlink list choices mail nameText address progress radio script u -hoisted-3 status table data tabs textarea tree XML flash kinds cflash msgs kind -hoisted-4 -hoisted-5 msg -hoisted-6 -hoisted-7 formErrors [ejs.web::View,private] model errors e -hoisted-2 createSession timeout destroySession html args makeUrl id redirectUrl code redirect setCookie name lifetime path secure setHeader key allowMultiple setHttpCode setMimeType format writeHtml writeRaw d addHelper fun overwrite getConnector connectorName Error setOptions getValue typeName fmt part date --fun_26399-- currency --fun_26433-- number --fun_26463-- getOptions result option mapped pivot grid headers i row r -hoisted-8 filter -hoisted-1 found f currentModel Record config nextId block_0000_0 -block- __initializer__ default ��;  ���y �  .�  2
8���3��#:��  	�����
� �x� ��    �2
$�2
�U���2
$�2
&�} �8U��U�C���2
*�2
(�2
*�U���2
,�} �8U��U�C���2
<�2
.�2
0�U���2
<�2
@�U�x��z� U�� �D�$U�=U� ��2
D�U���2
H�U�x��z� U�� �D�$U�=U� ��2
N�2
L�U���2
N�2
R�U�x��z� U�� �D�$U�=U� ��2
V�U���2
Z�U�x��z� U�� �D�$U�=U� ��2
`�2
^�U���2
`�2
d�U�x��z� U�� �D�$U�=U� ��2
h�U���2
l�U�x��z� U�� �D�$U�=U� ��2
r� 2
p� U� ��2
r�2
v�!U�x��z� U�"� �D�$U�=U� ��2
z�"U�#��2
~�$U�x��z� U�"� �D�$U�=U� ��2
��%2
��%U�%��2
��2
��&U�x��z� U�'� �D�$U�=U� ��2
��'U�(��2
��)U�x��z� U�'� �D�$U�=U� ��2
��*2
��*U�*��2
��2
��,2
��,U�-��2
��62
��7U�x�8� ��2
��82
��8U�8��2
��<2
��=U�x�>� ��2
��>2
��>U�?��2
��B2
��CU�x�D� ��2
��DU�D��2
��DU�x�D� ��2
��E2
��EU�E��2
��H2
��IU�x�I� ��2
��DU�D��2
��JU�x�J� ��2
��E2
��EU�J��2
��N2
��OU�x�O� ��2
��DU�D��2
��OU�x�P� ��2
��E2
��EU�P��2
��S2
��TU�x�T� ��2
��DU�D��2
��UU�x�U� ��2
��E2
��EU�U��2
��X2
��YU�x�Z� ��2
��DU�D��2
��ZU�x�Z� ��2
��E2
��EU�Z��2
��^2
��_U�x�_� ��2
��_2
��_U�_��2
��v2
��2
��2
��vU�w���2
���� ���@ ~  2

�Z �2
�
��  �	�x�x ��   2
�2
��