��         �X �� �Y ejs views/System/index.es public dynamic class System_indexView extends View { internal-0 ejs.db ejs.web System_indexView public     function System_indexView(c: Controller) {         super(c)     } -constructor- c private Controller     override public function render() { write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"> <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	<div class="cuerpo"><strong>System</strong>
		<div class="cuerpolinea"></div>
		<div class="cuerpoizq">
			<ul>
				<li><a href="/infocam/ChangePassword" title="Change Admin Password" class="V1N">Change Admin Password</a></li>
				<li><a href="/infocam/ResetDefaults" title="Reset Defaults" class="V1N">Reset Defaults</a></li>
				<li><a href="/infocam/Upgrade" title="Upgrade" class="V1N">Upgrade</a></li>
			</ul>	
		</div>
		<div class="cuerpoder V1N">
			<p><strong>System Settings:</strong></p>
			<p>Model Name:  			<p>Model Name: "); write("" + ModelName); ModelName write("</p> </p>
			<p>Hardware Version:  			<p>Hardware Version: "); write("" + HWVersion); HWVersion </p>
			<p>Firmware Version:  			<p>Firmware Version: "); write("" + FWVersion); FWVersion </p>
			<p>Serial Number:  			<p>Serial Number: "); write("" + SerialNumber); SerialNumber </p>
			
			<div class="clear"></div>
			
			<p><strong>CS Settings:</strong></p>
			<p>Serial Number:  write("" + CSSerialNumber); CSSerialNumber </p>
			<p>Bundle Key:  			<p>Bundle Key: "); write("" + CSBundleKey); CSBundleKey </p>
			<p>Registration Key:  			<p>Registration Key: "); write("" + CSRegKey); CSRegKey </p>
			<p>Status:  			<p>Status: "); write("" + CSStatus); CSStatus </p>
			
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>

	<div class="cuerpoBot"></div>
</div>
<div class="margenBottom20"></div> <div class=\"margenBottom20\"></div>"); 	<div class=\"margenBottom20\"></div> 
	<div class="margenBottom20"></div>
</body>
</html>
 render System_indexView-initializer -initializer- View clone Function intrinsic Object deep Boolean get iterator Iterator getValues length Number toJSON String toString controller View-initializer Void getNextId aform action record options connector alink text button value buttonName buttonLink chart initialData Array checkbox field choice endform form image src imageLink input label link extlink list choices mail nameText address progress radio script u -hoisted-3 status table data tabs textarea tree XML flash kinds cflash msgs kind -hoisted-4 -hoisted-5 msg -hoisted-6 -hoisted-7 formErrors [ejs.web::View,private] model errors e -hoisted-2 createSession timeout destroySession html args makeUrl id redirectUrl code redirect setCookie name lifetime path secure setHeader key allowMultiple setHttpCode setMimeType format writeHtml writeRaw d addHelper fun overwrite getConnector connectorName Error setOptions getValue typeName fmt part date --fun_26399-- currency --fun_26433-- number --fun_26463-- getOptions result option mapped pivot grid headers i row r -hoisted-8 filter -hoisted-1 found f currentModel Record config nextId block_0000_0 -block- __initializer__ default ��;  �X�G �  .�  2
6���3��#:�X  	�����
� �F� ��    �2
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
��(U�x��z� U�'� �D�$U�=U� ��2
��*2
��*U�*��2
��2
��,2
��,U�-��2
��62
��6U�x�7� ��2
��72
��7U�7��2
��72
��8U�x�8� ��2
��72
��7U�8��2
��92
��9U�x�:� ��2
��72
��7U�:��2
��:2
��;U�x�;� ��2
��72
��7U�;��2
��:2
��=U�x�=� ��2
��72
��7U�>��2
��>2
��>U�x�?� ��2
��72
��7U�?��2
��?2
��@U�x�@� ��2
��72
��7U�@��2
��A2
��AU�x�A� ��2
��72
��7U�A��2
��D2
��2
��2
��EU�E���2
���� ���@ ~  2

�Z �2
�
��  �	�F�G ��   2
�2
��