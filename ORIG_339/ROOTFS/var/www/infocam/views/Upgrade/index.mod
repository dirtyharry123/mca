��         �B ��i�B ejs views/Upgrade/index.es public dynamic class Upgrade_indexView extends View { internal-0 ejs.db ejs.web Upgrade_indexView public     function Upgrade_indexView(c: Controller) {         super(c)     } -constructor- c private Controller     override public function render() { write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"> <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>InfoCam</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="Language" content="ES">
	<meta name="Description" content="InfoCam">
	<meta name="keywords" content="InfoCam">
	<meta name="Copyright" content="InfoCam">
	 write 	"); stylesheet(["web/style/style.css" ]);  web/style/style.css  stylesheet write(" </head> 
</head>
<body>
	<div class="cabecera">
		<div class="cabeceraCont">
			<div class="logo"><a href=" 			<div class=\"logo\"><a href=\""); write("" + appUrl); appUrl write("/\" class=\"V2A\"><img src=\"web/images/infocam.png\" /></a></div> /" class="V2A"><img src="web/images/infocam.png" /></a></div>
			<div class="contmenu">
				<div class="menu"><a href="Network" class="V2A">Network</a></div>
				<div class="menu"><a href="Wireless" class="V2A">Wireless</a></div>
				<div class="menu"><a href="Email" class="V2A">E-mail</a></div>
				<div class="menu"><a href="CardSharing" class="V2A">Card Sharing</a></div>
				<div class="menu"><a href="System" class="V2A">System</a></div>
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
				<li><a href="/ChangePassword" title="Change Admin Password" class="V1N">Change Admin Password</a></li>
				<li><a href="/ResetDefaults" title="Reset Defaults" class="V1N">Reset Defaults</a></li>
				<li><a href="/Upgrade" title="Upgrade" class="V1N">Upgrade</a></li>
			</ul>	
		</div>
		<form method="post" name="upgrade" enctype="multipart/form-data">
			<div class="cuerpoder V1N">
				<p><strong>Upgrade</strong></p>
				<p>Please select the .cam upgrade file</p>
				<div class="txtform V1N">Firmware File</div>
				<div class="campoform V1N">
					<label>
						<input type="file" name="theFile"/> <br/>
					</label>
				</div><div class="clear"></div>
				<div class="clear"></div>

				<div class="txtform V1N"></div>
				<div class="campoform">
					<input type="submit" name="save" id="save" value="Upgrade Now" />
				</div><div class="clear"></div>
			</div>
		</form>
		<div class="clear"></div>
	</div>

	<div class="cuerpoBot"></div>
</div> </div>"); 	<div class=\"margenBottom20\"></div> 
	<div class="margenBottom20"></div>
</body>
</html>
 render Upgrade_indexView-initializer -initializer- View clone Function intrinsic Object deep Boolean get iterator Iterator getValues length Number toJSON String toString controller View-initializer Void getNextId aform action record options connector alink text button value buttonName buttonLink chart initialData Array checkbox field choice endform form image src imageLink input label link extlink url list choices mail nameText address progress radio script u -hoisted-3 status table data tabs textarea tree XML flash kinds cflash msgs kind -hoisted-4 -hoisted-5 msg -hoisted-6 -hoisted-7 formErrors [ejs.web::View,private] model errors e -hoisted-2 createSession timeout destroySession html args makeUrl id redirectUrl code redirect setCookie name lifetime path secure setHeader key allowMultiple setHttpCode setMimeType format writeHtml writeRaw d addHelper fun overwrite getConnector connectorName Error setOptions getValue typeName fmt part date --fun_5439-- currency --fun_5473-- number --fun_5503-- getOptions result option mapped pivot grid headers i row r -hoisted-8 filter -hoisted-1 found f currentModel Record config nextId block_0000_0 -block- __initializer__ default �;  �A�0 ,  .�  2
8���3��#:�A  	�������� �/� ��    �2
&�2
�U���2
&�2
(�}�8U��U�C���2
4�2
*�2
,�U���2
4�2
8�U�x�� ��2
V�2
<�U���2
V�2
��2
Z�U���2
��.2
��2
��2
��.U�.���2
���� ���@ ~  2

�Z �2
�
��  ���/�0 ,�   2
�2
��