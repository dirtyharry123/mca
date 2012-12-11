
public class WirelessController extends BaseController {

	private static const GET_CMD : String = "mcai GET %s"
	private static const SET_CMD : String = "mcai SET %s %s"
	private static const RESET_CMD : String = "mcai RESET %s"
	private static const SAVE_CMD : String = "mcai SAVE %s"
	
	private static const WIFI_SSID : String = "WIFI_SSID"
	private static const WIFI_KEY : String = "WIFI_KEY"
	private static const WIFI_KEY_INDEX : String = "WIFI_KEY_INDEX"
	private static const WIFI_ENCRYPTION : String = "WIFI_ENCRYPTION"
	
	public var localSSID: String = ""
	public var localPassword: String = ""
	
	public var keyIndex0: String = ""
	public var keyIndex1: String = ""
	public var keyIndex2: String = ""
	public var keyIndex3: String = ""

	public var noEncStatus: String = ""
	public var WEPEncStatus: String = ""
	public var WPAEncStatus: String = ""
	public var WPA2EncStatus: String = ""

	public var resultMessage: String = ""

	function WirelessController() {
	}

	use namespace action


	action function index() {
		loadFormerValues()
	}

	action function Save() {
		if (!Cmd.sh(SET_CMD.format(WIFI_SSID, params.ssid)).startsWith("TRUE")){
			resultMessage = "SSID setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(WIFI_KEY, params.password)).startsWith("TRUE")){
			resultMessage = "Key setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(WIFI_KEY_INDEX, params.keyindex)).startsWith("TRUE")){
			resultMessage = "Key Index setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(WIFI_ENCRYPTION, params.encryption)).startsWith("TRUE")){
			resultMessage = "Encryption setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(WIFI_SSID)).startsWith("TRUE")){
			resultMessage = "SSID saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(WIFI_KEY)).startsWith("TRUE")){
			resultMessage = "Key saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(WIFI_KEY_INDEX)).startsWith("TRUE")){
			resultMessage = "Key Index saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(WIFI_ENCRYPTION)).startsWith("TRUE")){
			resultMessage = "Encryption saving failed."
			resetInfocamValues()
		}
		
		localSSID = params.ssid
		localPassword = params.password

		noEncStatus = ""
		WEPEncStatus = ""
		WPAEncStatus = ""
		WPA2EncStatus = ""
		
		switch(params.keyindex){
			case "0":
				keyIndex0 = "selected"
			case "1":
				keyIndex1 = "selected"
			case "2":
				keyIndex2 = "selected"
			case "3":
				keyIndex3 = "selected"
		}
		
		switch(params.encryption){
			case "0":
				noEncStatus = "selected"
			case "1":
				WEPEncStatus = "selected"
			case "2":
				WPAEncStatus = "selected"
			case "3":
				WPA2EncStatus = "selected"
		}
		
		theIP = Cmd.sh("mcai GET NET_IP")
		redirect("http://%s/infocam/".format(theIP))
	}
	
	private function loadFormerValues(){
		localSSID = Cmd.sh(GET_CMD.format(WIFI_SSID))
		localPassword = Cmd.sh(GET_CMD.format(WIFI_KEY))
		
		switch(Cmd.sh(GET_CMD.format(WIFI_KEY_INDEX))){
			case "0":
				keyIndex0 = "selected"
			case "1":
				keyIndex1 = "selected"
			case "2":
				keyIndex2 = "selected"
			case "3":
				keyIndex3 = "selected"
		}
		
		switch(Cmd.sh(GET_CMD.format(WIFI_ENCRYPTION))){
			case "0":
				noEncStatus = "selected"
			case "1":
				WEPEncStatus = "selected"
			case "2":
				WPAEncStatus = "selected"
			case "3":
				WPA2EncStatus = "selected"
		}
	}
	
	private function resetInfocamValues(){
		Cmd.sh(RESET_CMD.format(WIFI_SSID))
		Cmd.sh(RESET_CMD.format(WIFI_KEY))
		Cmd.sh(RESET_CMD.format(WIFI_KEY_INDEX))
		Cmd.sh(RESET_CMD.format(WIFI_ENCRYPTION))
		loadFormerValues()
	}
}
