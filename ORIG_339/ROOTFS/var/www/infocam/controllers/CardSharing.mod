��         �= �� �= ejs controllers/CardSharing.es public class CardSharingController extends BaseController { internal-0 ejs.db ejs.web CardSharingController public 	private static const GET_CMD : String = "mcai GET %s" GET_CMD [CardSharingController,private] String mcai GET %s 	private static const SET_CMD : String = "mcai SET %s %s" SET_CMD mcai SET %s %s 	private static const RESET_CMD : String = "mcai RESET %s" RESET_CMD mcai RESET %s 	private static const SAVE_CMD : String = "mcai SAVE %s" SAVE_CMD mcai SAVE %s 	private static const BUNDLE_KEY : String = "CS_REG1" BUNDLE_KEY CS_REG1 	private static const REG_KEY : String = "CS_REG2" REG_KEY CS_REG2 	private static const SERVER : String = "CS_SERVER" SERVER CS_SERVER 	private static const STATUS : String = "CS_STATUS" STATUS CS_STATUS 	private static const SN : String = "CS_SN" SN CS_SN 	public var bundleKey: String = "" bundleKey  	public var regKey: String = "" regKey 	public var serverAddress: String = "" serverAddress 	public var serialNumber: String = "" serialNumber 	public var CSstatus: String = "" CSstatus 	public var resultMessage = "" resultMessage     function CardSharingController() {     } -constructor-     use namespace action     action function index() { 		loadFormerProperties() index action 	action function Save() { 		if (!Cmd.sh(SET_CMD.format(BUNDLE_KEY, params.bundlekey)).startsWith("TRUE")){ bundlekey TRUE startsWith 			resultMessage = "Bundle key setup failed." Bundle key setup failed. 			resetInfocamValues() 		else if (!Cmd.sh(SET_CMD.format(REG_KEY, params.regkey)).startsWith("TRUE")){ regkey 			resultMessage = "Registration key setup failed." Registration key setup failed. 		else if (!Cmd.sh(SAVE_CMD.format(BUNDLE_KEY)).startsWith("TRUE")){ 			resultMessage = "Bundle key saving failed." Bundle key saving failed. 		else if (!Cmd.sh(SAVE_CMD.format(REG_KEY)).startsWith("TRUE")){ 			resultMessage = "Registration key saving failed." Registration key saving failed. 		else{ 			resultMessage = "Settings updated gracefully" Settings updated gracefully 			bundleKey = params.bundlekey 			regKey = params.regkey 			serverAddress = params.server server 			serialNumber = Cmd.sh(GET_CMD.format(SN)) 			CSstatus = Cmd.sh(GET_CMD.format(STATUS)) 		} 		renderView("index") 	} Save 	private function loadFormerProperties(){ 		bundleKey = Cmd.sh(GET_CMD.format(BUNDLE_KEY)) 		regKey = Cmd.sh(GET_CMD.format(REG_KEY)) 		serverAddress = "DEMO_SERVER" DEMO_SERVER 		serialNumber = Cmd.sh(GET_CMD.format(SN)) 		CSstatus = Cmd.sh(GET_CMD.format(STATUS)) loadFormerProperties 	private function resetInfocamValues(){ 		Cmd.sh(RESET_CMD.format(BUNDLE_KEY)) 		Cmd.sh(RESET_CMD.format(REG_KEY)) 		Cmd.sh(RESET_CMD.format(SERVER)) resetInfocamValues CardSharingController-initializer -initializer- BaseController clone Function intrinsic Object deep private Boolean get iterator Iterator getValues length Number toJSON toString Controller initialize Void isApp appDir appUrl session Session host Host request Request response Response url parts name adapter -hoisted-10 dbname -hoisted-11 cache enable createSession timeout destroySession discardOutput resetFilters beforeFilter fn options afterFilter wrapFilter runFilters [ejs.web::Controller,private] filters Array filter -hoisted-1 -hoisted-2 -hoisted-3 doAction act lastFlash e item old -hoisted-4 sendError code msg renderError escapeHtml s html args inform error keepAlive on loadView path makeUrl id query cname -hoisted-5 redirectUrl redirect render renderFile filename file File ejs.io Error renderRaw renderView viewName viewClass n -hoisted-6 reportError setCookie value domain lifetime secure setHeader key allowMultiple setHttpCode setMimeType format unescapeHtml warn write writeHtml writeRaw missing actionName originalActionName absUrl controllerName config flash home params rendered redirected events Dispatcher ejs.events _afterFilters _beforeFilters _wrapFilters title style block_0000_0 -block- __initializer__ default ��;  �=�+ �  .�  2
@���3��#:�=  	�����x8 �� ���@ Z   LU��,U��.U��0U��2U��4U��6  �2
2��*�+ �\   �2
�U��^2

�U��`2
�U��b2
�U��d2
�U��f2
�	U�	�h2
�
U�
�j2
�U��l2
�U��n2
�2
 �2
"�2
$�2
&�2
*�2
0�2
6�}�2
:�2
B�2
��#2
��'�
����� ^�
����� `�
����� b�
����� d�
����� f�
�	���� h�
�
���� j�
����� l�
����� n���   p   2
<�t �2
>��#�   r   �2
D�}��`�fwz��� �U�����2
F�U��62
H�v <� 2
L�}��`�hwz��� �U�����2
N�U��62
P�v <�  2
`�}��d�f� �U�����2
b�U��62
d�v <�  2
h�}��d�h� �U�����2
j�U��62
l�v =m2
|�2
~�U��62
��wz���,2
�� wz���.2
�� wz�!��02
��!}��^�n� ��22
��"}��^�l� ��42
��"2
��"U�@�2
��#�'�   t   �2
��$}��^�f� ��,2
��$}��^�h� ��.2
��%U�%�02
��&}��^�n� ��22
��&}��^�l� ��4�2
��#�*�   v   �2
��(}��b�f� 2
��)}��b�h� 2
��)}��b�j� 2
��t �2
��#
�� ,�
�� .�
�� 0�
�� 2�
�� 4�
�� 6 