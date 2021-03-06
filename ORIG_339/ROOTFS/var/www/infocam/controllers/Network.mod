��         �\ �� �\ ejs controllers/Network.es public class NetworkController extends BaseController { internal-0 ejs.db ejs.web NetworkController public 	private static const GET_CMD : String = "mcai GET %s" GET_CMD [NetworkController,private] String mcai GET %s 	private static const SET_CMD : String = "mcai SET %s %s" SET_CMD mcai SET %s %s 	private static const RESET_CMD : String = "mcai RESET %s" RESET_CMD mcai RESET %s 	private static const SAVE_CMD : String = "mcai SAVE %s" SAVE_CMD mcai SAVE %s 	private static const NET_TYPE : String = "NET_TYPE" NET_TYPE 	private static const NET_IP : String = "NET_IP" NET_IP 	private static const NET_NETMASK : String = "NET_NETMASK" NET_NETMASK 	private static const NET_GATEWAY : String = "NET_GATEWAY" NET_GATEWAY 	private static const NET_DNS1 : String = "NET_DNS1" NET_DNS1 	private static const NET_DNS2 : String = "NET_DNS2" NET_DNS2 	public var isDHCPchecked: String = "" isDHCPchecked  	public var isStaticIPchecked: String = "" isStaticIPchecked 	public var localIP: String = "" localIP 	public var localNetmask: String = "" localNetmask 	public var localGateway: String = "" localGateway 	public var localDNS1: String = "" localDNS1 	public var localDNS2: String = "" localDNS2 	public var IPstatus: String = "" IPstatus 	public var netmaskStatus: String = "" netmaskStatus 	public var gatewayStatus: String = "" gatewayStatus 	public var dns1Status: String = "" dns1Status 	public var dns2Status: String = "" dns2Status 	public var resultMessage: String = "" resultMessage 	function NetworkController() { 	} -constructor- 	use namespace action 	action function index() { 		loadFormerValues() index action 	action function Save() {		 		if (params.mode == "DHCP"){ mode DHCP 			if (!Cmd.sh(SET_CMD.format(NET_TYPE, params.mode)).startsWith("TRUE")){ TRUE startsWith 				resultMessage = "Network mode setup failed." Network mode setup failed. 				resetInfocamValues() 			else if (!Cmd.sh(SAVE_CMD.format(NET_TYPE)).startsWith("TRUE")){ 				resultMessage = "Network mode saving failed." Network mode saving failed. 			} 			loadFormerValues() 			redirect("http://%s/infocam/".format(localIP)) http://%s/infocam/ format 		else{ 			else if (!Cmd.sh(SET_CMD.format(NET_IP, params.ip)).startsWith("TRUE")){ ip 				resultMessage = "IP address setup failed." IP address setup failed. 			else if (!Cmd.sh(SET_CMD.format(NET_NETMASK, params.netmask)).startsWith("TRUE")){ netmask 				resultMessage = "Netmask setup failed." Netmask setup failed. 			else if (!Cmd.sh(SET_CMD.format(NET_GATEWAY, params.gateway)).startsWith("TRUE")){ gateway 				resultMessage = "Gateway setup failed." Gateway setup failed. 			else if (!Cmd.sh(SET_CMD.format(NET_DNS1, params.dns1)).startsWith("TRUE")){ dns1 				resultMessage = "DNS 1 setup failed." DNS 1 setup failed. 			else if (!Cmd.sh(SET_CMD.format(NET_DNS2, params.dns2)).startsWith("TRUE")){ dns2 				resultMessage = "DNS 2 setup failed." DNS 2 setup failed. 			else if (!Cmd.sh(SAVE_CMD.format(NET_IP)).startsWith("TRUE")){ 				resultMessage = "Ip address saving failed." Ip address saving failed. 			else if (!Cmd.sh(SAVE_CMD.format(NET_NETMASK)).startsWith("TRUE")){ 				resultMessage = "Netmask saving failed." Netmask saving failed. 			else if (!Cmd.sh(SAVE_CMD.format(NET_GATEWAY)).startsWith("TRUE")){ 				resultMessage = "Gateway saving failed." Gateway saving failed. 			else if (!Cmd.sh(SAVE_CMD.format(NET_DNS1)).startsWith("TRUE")){ 				resultMessage = "DNS1 saving failed." DNS1 saving failed. 			else if (!Cmd.sh(SAVE_CMD.format(NET_DNS2)).startsWith("TRUE")){ 				resultMessage = "DNS 2 saving failed." DNS 2 saving failed. 			isStaticIPchecked = "checked" checked 			localIP = params.ip 			localNetmask = params.netmask 			localGateway = params.gateway	 			localDNS1 = params.dns1 			localDNS2 = params.dns2 			redirect("http://%s/infocam/".format(params.ip))     } Save 	private function loadFormerValues(){ 		if (Cmd.sh(GET_CMD.format(NET_TYPE)) == "DHCP"){ 			isDHCPchecked = "checked" 			IPstatus = "disabled" disabled 			netmaskStatus = "disabled" 			gatewayStatus = "disabled" 			dns1Status = "disabled" 			dns2Status = "disabled" 		} 		localIP = Cmd.sh(GET_CMD.format(NET_IP)) 		localNetmask = Cmd.sh(GET_CMD.format(NET_NETMASK)) 		localGateway = Cmd.sh(GET_CMD.format(NET_GATEWAY)) 		localDNS1 = Cmd.sh(GET_CMD.format(NET_DNS1)) 		localDNS2 = Cmd.sh(GET_CMD.format(NET_DNS2)) loadFormerValues 	private function resetInfocamValues(){ 		Cmd.sh(RESET_CMD.format(NET_TYPE)) 		Cmd.sh(RESET_CMD.format(NET_IP)) 		Cmd.sh(RESET_CMD.format(NET_NETMASK)) 		Cmd.sh(RESET_CMD.format(NET_GATEWAY)) 		Cmd.sh(RESET_CMD.format(NET_DNS1)) 		Cmd.sh(RESET_CMD.format(NET_DNS2)) resetInfocamValues NetworkController-initializer -initializer- BaseController clone Function intrinsic Object deep private Boolean get iterator Iterator getValues length Number toJSON toString Controller initialize Void isApp appDir appUrl session Session host Host request Request response Response url parts name adapter -hoisted-10 dbname -hoisted-11 cache enable createSession timeout destroySession discardOutput resetFilters beforeFilter fn options afterFilter wrapFilter runFilters [ejs.web::Controller,private] filters Array filter -hoisted-1 -hoisted-2 -hoisted-3 doAction act lastFlash e item old -hoisted-4 sendError code msg renderError escapeHtml s html args inform error keepAlive on loadView path makeUrl id query cname -hoisted-5 redirectUrl redirect render renderFile filename file File ejs.io Error renderRaw renderView viewName viewClass n -hoisted-6 reportError setCookie value domain lifetime secure setHeader key allowMultiple setHttpCode setMimeType unescapeHtml warn write writeHtml writeRaw missing actionName originalActionName absUrl controllerName config flash home params rendered redirected events Dispatcher ejs.events _afterFilters _beforeFilters _wrapFilters title style block_0000_0 -block- __initializer__ default ��;  �[�J �  .�  2
8���3��#:�[  	�����zF �� ���@ Z   �U��,U��.U��0U��2U��4U��6U��8U��:U��<U��>U��@U��BU��D  �2
D��I�I �\   �2
�U��^2

�U��`2
�U��b2
�U��d2
�U��f2
�U�	�h2
�	U�
�j2
�
U��l2
�U��n2
�U��p2
 �2
"�2
&�2
(�2
*�2
,�2
.�2
2�2
4�2
6�2
8�2
:�2
>�2
B�2
H�}�2
L�2
T�2
��<2
��D�
����� ^�
����� `�
����� b�
����� d�
����� f�
�	���� h�
�
���� j�
����� l�
����� n�
����� p���   r   2
N�v �2
P��<�   t   �2
V�wz��U�$�  2
X�}��`�fwz��� �U�����2
Z�U��D2
\�x =82
`�}��d�f� �U�����2
b�U��D2
d�x = 2
f� 2
j� v 2
n� U�!�0�! �8<�)2
r�!2
t�}��`�fwz��� �U�����2
v�U��D2
x�x <�
8�2
|�!}��`�hwz�#�� �U�����2
~�#U�#�D2
��x <�	�32
��$}��`�jwz�%�� �U�����2
��%U�&�D2
��x <� 2
��&}��`�lwz�(�� �U�����2
��(U�(�D2
��x <�  2
��)}��`�nwz�*�� �U�����2
��*U�+�D2
��x <� 2
��+}��`�pwz�,�� �U�����2
��,U�-�D2
��x <� 2
��}��d�f� �U�����2
��U��D2
��x <�  2
��-}��d�h� �U�����2
��.U�/�D2
��x <�  2
��/}��d�j� �U�����2
��1U�1�D2
��x <�  2
��2}��d�l� �U�����2
��3U�3�D2
��x =v2
��4}��d�n� �U�����2
��5U�6�D2
��x =;2
��6}��d�p� �U�����2
��7U�8�D2
��x = 2
�� 2
��8U�8�.2
��9wz�#��02
��9wz�%��22
��9wz�(��42
��:wz�*��62
��:wz�,��82
��;U�!wz�#��! �8�2
��<�D�   v   �2
��<}��^�f� �U�$D2
��=U�8�,2
��>U�>�:2
��>U�>�<2
��?U�>�>2
��?U�>�@2
��@U�>�B=2
��!2
��8U�8�.2
��@2
��@}��^�h� ��02
��A}��^�j� ��22
��B}��^�l� ��42
��B}��^�n� ��62
��C}��^�p� ��8�2
���H�   x   �2
��E}��b�f� 2
��E}��b�h� 2
��F}��b�j� 2
��F}��b�l� 2
��G}��b�n� 2
��H}��b�p� 2
��v �2
��
�� ,�
�� .�
�� 0�
�� 2�
�� 4�
�� 6�
�� 8�
�� :�
�� <�
�� >�
�� @�
�� B�
�� D�