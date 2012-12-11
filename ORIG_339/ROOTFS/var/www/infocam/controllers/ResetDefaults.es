
public class ResetDefaultsController extends BaseController {

	private static const CHANGE_PASSWORD_CMD : String = "httpPassword -p admin /etc/appweb/infocam-auth.db infocam admin"
	
	private static const LOAD_DEFAULTS_CMD : String = "mcai SET_FACTORY_DEFAULT %s"
	
	private static const NET_TYPE : String = "NET_TYPE"
	private static const NET_IP : String = "NET_IP"
	private static const NET_NETMASK : String = "NET_NETMASK"
	private static const NET_GATEWAY : String = "NET_GATEWAY"
	private static const NET_DNS1 : String = "NET_DNS1"	
	private static const NET_DNS2 : String = "NET_DNS2"
	
	private static const WIFI_SSID : String = "WIFI_SSID"
	private static const WIFI_KEY : String = "WIFI_KEY"
	private static const WIFI_KEY_INDEX : String = "WIFI_KEY_INDEX"
	private static const WIFI_ENCRYPTION : String = "WIFI_ENCRYPTION"
	
	private static const POP_SERVER : String = "POP_SERVER"
	private static const POP_PORT : String = "POP_PORT"
	private static const POP_EMAIL_ADDRESS : String = "POP_EMAIL_ADDRESS"
	private static const POP_USER : String = "POP_USER"
	private static const POP_PASSWORD : String = "POP_PASSWORD"
	private static const POP_CHECKTIME : String = "POP_CHECKTIME"
	
	public var resultMessage: String = ""

    function ResetDefaultsController() {
    }

    use namespace action

    action function index() {
    }
	
	action function Save(){
		Cmd.sh(CHANGE_PASSWORD_CMD)
		
		if (params.save == "Factory Defaults"){
			Cmd.sh(LOAD_DEFAULTS_CMD.format(NET_TYPE))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(NET_IP))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(NET_NETMASK))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(NET_GATEWAY))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(NET_DNS1))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(NET_DNS2))

			Cmd.sh(LOAD_DEFAULTS_CMD.format(WIFI_SSID))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(WIFI_KEY))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(WIFI_KEY_INDEX))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(WIFI_ENCRYPTION))


			Cmd.sh(LOAD_DEFAULTS_CMD.format(POP_SERVER))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(POP_PORT))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(POP_EMAIL_ADDRESS))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(POP_USER))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(POP_PASSWORD))
			Cmd.sh(LOAD_DEFAULTS_CMD.format(POP_CHECKTIME))
			
			theIp = Cmd.sh("mcai GET NET_IP")

			redirect("http://%s/infocam/".format(theIp));
		}	
		else{
			resultMessage = "Application settings modified gracefully."
			renderView("index")
		}	
	}


}
