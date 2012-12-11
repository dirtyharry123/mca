
public class NetworkController extends BaseController {

	private static const GET_CMD : String = "mcai GET %s"
	private static const SET_CMD : String = "mcai SET %s %s"
	private static const RESET_CMD : String = "mcai RESET %s"
	private static const SAVE_CMD : String = "mcai SAVE %s"
	
	private static const NET_TYPE : String = "NET_TYPE"
	private static const NET_IP : String = "NET_IP"
	private static const NET_NETMASK : String = "NET_NETMASK"
	private static const NET_GATEWAY : String = "NET_GATEWAY"
	private static const NET_DNS1 : String = "NET_DNS1"
	private static const NET_DNS2 : String = "NET_DNS2"

	public var isDHCPchecked: String = ""
	public var isStaticIPchecked: String = ""
	
	public var localIP: String = ""
	public var localNetmask: String = ""
	public var localGateway: String = ""
	public var localDNS1: String = ""
	public var localDNS2: String = ""
	
	public var IPstatus: String = ""
	public var netmaskStatus: String = ""
	public var gatewayStatus: String = ""
	public var dns1Status: String = ""
	public var dns2Status: String = ""

	public var resultMessage: String = ""
	
	function NetworkController() {
	}

	use namespace action

	action function index() {
		loadFormerValues()
	}

	action function Save() {		
		if (params.mode == "DHCP"){
			if (!Cmd.sh(SET_CMD.format(NET_TYPE, params.mode)).startsWith("TRUE")){
				resultMessage = "Network mode setup failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SAVE_CMD.format(NET_TYPE)).startsWith("TRUE")){
				resultMessage = "Network mode saving failed."
				resetInfocamValues()
			}
			
			loadFormerValues()
			
			redirect("http://%s/infocam/".format(localIP))
		}
		else{
			if (!Cmd.sh(SET_CMD.format(NET_TYPE, params.mode)).startsWith("TRUE")){
				resultMessage = "Network mode setup failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SET_CMD.format(NET_IP, params.ip)).startsWith("TRUE")){
				resultMessage = "IP address setup failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SET_CMD.format(NET_NETMASK, params.netmask)).startsWith("TRUE")){
				resultMessage = "Netmask setup failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SET_CMD.format(NET_GATEWAY, params.gateway)).startsWith("TRUE")){
				resultMessage = "Gateway setup failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SET_CMD.format(NET_DNS1, params.dns1)).startsWith("TRUE")){
				resultMessage = "DNS 1 setup failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SET_CMD.format(NET_DNS2, params.dns2)).startsWith("TRUE")){
				resultMessage = "DNS 2 setup failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SAVE_CMD.format(NET_TYPE)).startsWith("TRUE")){
				resultMessage = "Network mode saving failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SAVE_CMD.format(NET_IP)).startsWith("TRUE")){
				resultMessage = "Ip address saving failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SAVE_CMD.format(NET_NETMASK)).startsWith("TRUE")){
				resultMessage = "Netmask saving failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SAVE_CMD.format(NET_GATEWAY)).startsWith("TRUE")){
				resultMessage = "Gateway saving failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SAVE_CMD.format(NET_DNS1)).startsWith("TRUE")){
				resultMessage = "DNS1 saving failed."
				resetInfocamValues()
			}
			else if (!Cmd.sh(SAVE_CMD.format(NET_DNS2)).startsWith("TRUE")){
				resultMessage = "DNS 2 saving failed."
				resetInfocamValues()
			}
			
			isStaticIPchecked = "checked"

			localIP = params.ip
			localNetmask = params.netmask
			localGateway = params.gateway	
			localDNS1 = params.dns1
			localDNS2 = params.dns2
			
			redirect("http://%s/infocam/".format(params.ip))
		}
    }

	private function loadFormerValues(){
		if (Cmd.sh(GET_CMD.format(NET_TYPE)) == "DHCP"){
			isDHCPchecked = "checked"
			IPstatus = "disabled"
			netmaskStatus = "disabled"
			gatewayStatus = "disabled"
			dns1Status = "disabled"
			dns2Status = "disabled"
		}
		else{
			isStaticIPchecked = "checked"
		}
		
		localIP = Cmd.sh(GET_CMD.format(NET_IP))
		localNetmask = Cmd.sh(GET_CMD.format(NET_NETMASK))
		localGateway = Cmd.sh(GET_CMD.format(NET_GATEWAY))
		localDNS1 = Cmd.sh(GET_CMD.format(NET_DNS1))
		localDNS2 = Cmd.sh(GET_CMD.format(NET_DNS2))
	}
	
	private function resetInfocamValues(){
		Cmd.sh(RESET_CMD.format(NET_TYPE))
		Cmd.sh(RESET_CMD.format(NET_IP))
		Cmd.sh(RESET_CMD.format(NET_NETMASK))
		Cmd.sh(RESET_CMD.format(NET_GATEWAY))
		Cmd.sh(RESET_CMD.format(NET_DNS1))
		Cmd.sh(RESET_CMD.format(NET_DNS2))
		loadFormerValues()
	}
}
