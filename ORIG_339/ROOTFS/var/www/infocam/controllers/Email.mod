��         �Z �� �Z ejs controllers/Email.es public class EmailController extends BaseController { internal-0 ejs.db ejs.web EmailController public 	private static const GET_CMD : String = "mcai GET %s" GET_CMD [EmailController,private] String mcai GET %s 	private static const SET_CMD : String = "mcai SET %s %s" SET_CMD mcai SET %s %s 	private static const RESET_CMD : String = "mcai RESET %s" RESET_CMD mcai RESET %s 	private static const SAVE_CMD : String = "mcai SAVE %s" SAVE_CMD mcai SAVE %s 	private static const POP_SERVER : String = "POP_SERVER" POP_SERVER 	private static const POP_PORT : String = "POP_PORT" POP_PORT 	private static const POP_ADDRESS : String = "POP_ADDRESS" POP_ADDRESS 	private static const POP_USER : String = "POP_USER" POP_USER 	private static const POP_PASSWORD : String = "POP_PASSWORD" POP_PASSWORD 	private static const POP_CHECKTIME : String = "POP_CHECKTIME" POP_CHECKTIME 	public var localServer: String = "" localServer  	public var localPort: String = "" localPort 	public var localEmail: String = "" localEmail 	public var localUser: String = "" localUser 	public var localPassword: String = "" localPassword 	public var min5Status: String = "" min5Status 	public var min15Status: String = "" min15Status 	public var min30Status: String = "" min30Status 	public var day1Status: String = "" day1Status 	public var resultMessage: String = "" resultMessage 	function EmailController() { 	} -constructor- 	use namespace action 	action function index() { 		loadFormerSettings() index action 	action function Save(){ 		if (!Cmd.sh(SET_CMD.format(POP_SERVER, params.server)).startsWith("TRUE")){ server TRUE startsWith 			resultMessage = "Server address setup failed." Server address setup failed. 			resetInfocamValues() 		else if (!Cmd.sh(SET_CMD.format(POP_PORT, params.serverport)).startsWith("TRUE")){ serverport 			resultMessage = "Server port setup failed." Server port setup failed. 		else if (!Cmd.sh(SET_CMD.format(POP_ADDRESS, params.email)).startsWith("TRUE")){ email 			resultMessage = "Email Address setup failed." Email Address setup failed. 		else if (!Cmd.sh(SET_CMD.format(POP_USER, params.user)).startsWith("TRUE")){ user 			resultMessage = "User name setup failed." User name setup failed. 		else if (!Cmd.sh(SET_CMD.format(POP_PASSWORD, params.password)).startsWith("TRUE")){ password 			resultMessage = "Password setup failed." Password setup failed. 		else if (!Cmd.sh(SET_CMD.format(POP_CHECKTIME, params.serverport)).startsWith("TRUE")){ 			resultMessage = "Checktime setup failed." Checktime setup failed. 		else if (!Cmd.sh(SAVE_CMD.format(POP_SERVER)).startsWith("TRUE")){ 			resultMessage = "Server address saving failed." Server address saving failed. 		else if (!Cmd.sh(SAVE_CMD.format(POP_PORT)).startsWith("TRUE")){ 			resultMessage = "Server port saving failed." Server port saving failed. 		else if (!Cmd.sh(SAVE_CMD.format(POP_ADDRESS)).startsWith("TRUE")){ 			resultMessage = "Email Address saving failed." Email Address saving failed. 		else if (!Cmd.sh(SAVE_CMD.format(POP_USER)).startsWith("TRUE")){ 			resultMessage = "User name saving failed." User name saving failed. 		else if (!Cmd.sh(SAVE_CMD.format(POP_PASSWORD)).startsWith("TRUE")){ 			resultMessage = "Password saving failed." Password saving failed. 		else if (!Cmd.sh(SAVE_CMD.format(POP_CHECKTIME)).startsWith("TRUE")){ 			resultMessage = "Checktimesaving failed." Checktimesaving failed. 		} 		resultMessage = "Email settings modified succesfully." Email settings modified succesfully. 		localServer = params.server 		localPort = params.serverport 		localEmail = params.email	 		localUser = params.user 		localPassword = params.password 		switch(params.check){ check 			case "0": 0 				min5Status = "selected" selected 			case "1": 1 				min15Status = "selected" 			case "2": 2 				min30Status = "selected" 			case "3": 3 				day1Status = "selected" 		renderView("index") Save 	private function loadFormerSettings(){ 		localServer = Cmd.sh(GET_CMD.format(POP_SERVER)) 		localPort = Cmd.sh(GET_CMD.format(POP_PORT)) 		localEmail = Cmd.sh(GET_CMD.format(POP_ADDRESS)) 		localUser = Cmd.sh(GET_CMD.format(POP_USER)) 		localPassword = Cmd.sh(GET_CMD.format(POP_PASSWORD)) 		switch(Cmd.sh(GET_CMD.format(POP_CHECKTIME))){ loadFormerSettings 	private function resetInfocamValues(){ 		Cmd.sh(RESET_CMD.format(POP_SERVER)) 		Cmd.sh(RESET_CMD.format(POP_PORT)) 		Cmd.sh(RESET_CMD.format(POP_ADDRESS)) 		Cmd.sh(RESET_CMD.format(POP_USER)) 		Cmd.sh(RESET_CMD.format(POP_PASSWORD)) 		Cmd.sh(RESET_CMD.format(POP_CHECKTIME)) resetInfocamValues EmailController-initializer -initializer- BaseController clone Function intrinsic Object deep private Boolean get iterator Iterator getValues length Number toJSON toString Controller initialize Void isApp appDir appUrl session Session host Host request Request response Response url parts name adapter -hoisted-10 dbname -hoisted-11 cache enable createSession timeout destroySession discardOutput resetFilters beforeFilter fn options afterFilter wrapFilter runFilters [ejs.web::Controller,private] filters Array filter -hoisted-1 -hoisted-2 -hoisted-3 doAction act lastFlash e item old -hoisted-4 sendError code msg renderError escapeHtml s html args inform error keepAlive on loadView path makeUrl id query cname -hoisted-5 redirectUrl redirect render renderFile filename file File ejs.io Error renderRaw renderView viewName viewClass n -hoisted-6 reportError setCookie value domain lifetime secure setHeader key allowMultiple setHttpCode setMimeType format unescapeHtml warn write writeHtml writeRaw missing actionName originalActionName absUrl controllerName config flash home params rendered redirected events Dispatcher ejs.events _afterFilters _beforeFilters _wrapFilters title style block_0000_0 -block- __initializer__ default ��;  �Z�H �  .�  2
4���3��#:�Y  	������z@ �� ���@ Z   tU��,U��.U��0U��2U��4U��6U��8U��:U��<U��>  �2
<��G�G �\   �2
�U��^2

�U��`2
�U��b2
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
$�2
&�2
(�2
,�2
.�2
0�2
2�2
6�2
:�2
@�}�2
D�2
L�2
��<2
��B�
����� ^�
����� `�
����� b�
����� d�
����� f�
�	���� h�
�
���� j�
����� l�
����� n�
����� p���   r   2
F�v �2
H��<�   t   �2
N�}��`�fwz��� �U�����2
P�U��>2
R�x <�
  2
V�}��`�hwz��� �U�����2
X�U��>2
Z�x <�	  2
^�}��`�jwz��� �U�����2
`�U��>2
b�x <�  2
f� }��`�lwz�!�� �U�����2
h�!U�"�>2
j�x <�  2
n�"}��`�nwz�$�� �U�����2
p�$U�%�>2
r�x <�  2
v�%}��`�pwz��� �U�����2
x�&U�'�>2
z�x <�  2
��'}��d�f� �U�����2
��(U�)�>2
��x <�  2
��*}��d�h� �U�����2
��+U�+�>2
��x <�  2
��,}��d�j� �U�����2
��-U�.�>2
��x <�  2
��.}��d�l� �U�����2
��/U�0�>2
��x =v2
��0}��d�n� �U�����2
��2U�2�>2
��x =;2
��3}��d�p� �U�����2
��4U�4�>2
��x = 2
��52
��5U�6�>2
��6wz���,2
��7wz���.2
��7wz���02
��8wz�!��22
��8wz�$��42
��9wz�9�2
��98U�9%2
��9U�:�6=2
��:8U�:%2
��:U�:�8=2
��;8U�;%2
��;U�:�:=2
��;8U�<%2
��<U�:�<�2
��52
��<U�@�2
���B�   v   �2
��=}��^�f� ��,2
��>}��^�h� ��.2
��?}��^�j� ��02
��?}��^�l� ��22
��@}��^�n� ��42
��A}��^�p� 2
��98U�9%2
��9U�:�6=2
��:8U�:%2
��:U�:�8=2
��;8U�;%2
��;U�:�:=2
��;8U�<%2
��<U�:�<��2
���F�   x   �2
��C}��b�f� 2
��C}��b�h� 2
��D}��b�j� 2
��D}��b�l� 2
��E}��b�n� 2
��F}��b�p� 2
��v �2
��
�� ,�
�� .�
�� 0�
�� 2�
�� 4�
�� 6�
�� 8�
�� :�
�� <�
�� >�