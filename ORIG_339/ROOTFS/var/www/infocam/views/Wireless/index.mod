��         �w ڣ �x ejs views/Wireless/index.es public dynamic class Wireless_indexView extends View { internal-0 ejs.db ejs.web Wireless_indexView public     function Wireless_indexView(c: Controller) {         super(c)     } -constructor- c private Controller     override public function render() { write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"> <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	<div class="cuerpo"><strong>Wireless</strong>
		<div class="cuerpolinea"></div>
		<div class="cuerpoizq">
			<ul>
				<li>Settings</li>
			</ul>	
		</div>
		<form method="post" name="wireless" action="/infocam/Wireless/Save/" onsubmit="return checkValues()">
			<div class="cuerpoder V1N">
				<p><strong>Settings</strong></p>
				<p>Please complete the following fields:</p>
				
				<div class="txtform V1N">SSID</div>
				<div class="campoform V1N">
					<label>
						<input type="text" name="ssid" id="ssid" value=" 						<input type=\"text\" name=\"ssid\" id=\"ssid\" value=\""); write("" + localSSID); localSSID write("\"/> "/>
					</label>
				</div><div class="clear"></div>
				
				<div class="txtform V1N">Password</div>
				<div class="campoform">
					<input type="password" name="password" id="password" value=" 					<input type=\"password\" name=\"password\" id=\"password\" value=\""); write("" + localPassword); localPassword "/>
				</div><div class="clear"></div>
				
				<div class="txtform V1N">Key Index</div>
				<div class="campoform V1N">
					<label>
						<select name="keyindex" id="keyindex">
							<option value="0"  							<option value=\"0\" "); write("" + keyIndex0); keyIndex0 write(">0</option> >0</option>
							<option value="1"  							<option value=\"1\" "); write("" + keyIndex1); keyIndex1 write(">1</option> >1</option>
							<option value="2"  							<option value=\"2\" "); write("" + keyIndex2); keyIndex2 write(">2</option> >2</option>
							<option value="3"  							<option value=\"3\" "); write("" + keyIndex3); keyIndex3 write(">3</option> >3</option>
						</select>
					</label>
				</div><div class="clear"></div>
				
				<div class="txtform V1N">Encryption</div>
				<div class="campoform V1N">
					<label>
						<select name="encryption" id="encryption">
							<option value="None"  							<option value=\"None\" "); write("" + noEncStatus); noEncStatus write(">None</option> >None</option>
							<option value="WEP"  							<option value=\"WEP\" "); write("" + WEPEncStatus); WEPEncStatus write(">WEP</option> >WEP</option>
							<option value="WPA"  							<option value=\"WPA\" "); write("" + WPAEncStatus); WPAEncStatus write(">WPA</option> >WPA</option>
							<option value="WPA2"  							<option value=\"WPA2\" "); write("" + WPA2EncStatus); WPA2EncStatus write(">WPA2</option> >WPA2</option>
						</select>
					</label>
				</div><div class="clear"></div>
				
				<div class="txtform V1N"></div>
				<div class="campoform">
					<input type="submit" name="save" id="save" value="Save" />
				</div><div class="clear"></div>
				
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
	if (document.wireless.ssid.value.length == 0){
		alert("SSID required.")
		return false;
	}
	else if (document.wireless.encryption.value != "None" &&
			 document.wireless.password.value.length == 0){
		alert("Password required for the selected encryption type.")
		return false;
	} 
	else{
		alert("You will be redirected after changes take effect. If any connectivity issue is found, check settings in Common Interface.")
		return true;
	}
}

//-->
</script> </script>"); 	<div class=\"margenBottom20\"></div> 
	<div class="margenBottom20"></div>
</body>
</html>
 render Wireless_indexView-initializer -initializer- View clone Function intrinsic Object deep Boolean get iterator Iterator getValues length Number toJSON String toString controller View-initializer Void getNextId aform action record options connector alink text button value buttonName buttonLink chart initialData Array checkbox field choice endform form image src imageLink input label link extlink list choices mail nameText address progress radio script u -hoisted-3 status table data tabs textarea tree XML flash kinds cflash msgs kind -hoisted-4 -hoisted-5 msg -hoisted-6 -hoisted-7 formErrors [ejs.web::View,private] model errors e -hoisted-2 createSession timeout destroySession html args makeUrl id redirectUrl code redirect setCookie name lifetime path secure setHeader key allowMultiple setHttpCode setMimeType format writeHtml writeRaw d addHelper fun overwrite getConnector connectorName Error setOptions getValue typeName fmt part date --fun_26399-- currency --fun_26433-- number --fun_26463-- getOptions result option mapped pivot grid headers i row r -hoisted-8 filter -hoisted-1 found f currentModel Record config nextId block_0000_0 -block- __initializer__ default ��;  �w�f �  .�  2
:���3��#:�w  	�����
� �e� ��    �2
$�2
�U���2
$�2
&�} �8U��U�C���2
*�2
(�2
*�U���2
,�} �8U��U�C���2
<�2
.�2
0�U���2
<�2
@�U�x��z� U�� �D�$U�=U� ��2
D�U���2
H�U�x��z� U�� �D�$U�=U� ��2
N�2
L�U���2
N�2
R�U�x��z� U�� �D�$U�=U� ��2
V�U���2
Z�U�x��z� U�� �D�$U�=U� ��2
`�2
^�U���2
`�2
d�U�x��z� U�� �D�$U�=U� ��2
h�U���2
l�U�x��z� U�� �D�$U�=U� ��2
r� 2
p� U� ��2
r�2
v�!U�x��z� U�"� �D�$U�=U� ��2
z�"U�#��2
~�$U�x��z� U�"� �D�$U�=U� ��2
��%2
��%U�%��2
��2
��&U�x��z� U�'� �D�$U�=U� ��2
��'U�(��2
��)U�x��z� U�'� �D�$U�=U� ��2
��*2
��*U�*��2
��2
��,2
��,U�-��2
��62
��7U�x�8� ��2
��82
��8U�8��2
��;2
��<U�x�=� ��2
��82
��8U�=��2
��@2
��AU�x�A� ��2
��A2
��AU�B��2
��B2
��CU�x�C� ��2
��C2
��CU�C��2
��D2
��EU�x�E� ��2
��E2
��EU�E��2
��F2
��FU�x�G� ��2
��G2
��GU�G��2
��K2
��LU�x�L� ��2
��L2
��LU�M��2
��N2
��NU�x�N� ��2
��O2
��OU�O��2
��P2
��PU�x�Q� ��2
��Q2
��QU�Q��2
��R2
��RU�x�S� ��2
��S2
��SU�S��2
��X2
��XU�x�X� ��2
��Y2
��YU�Y��2
��c2
��2
��2
��dU�d���2
���� ���@ ~  2

�Z �2
�
��  �	�e�f ��   2
�2
��