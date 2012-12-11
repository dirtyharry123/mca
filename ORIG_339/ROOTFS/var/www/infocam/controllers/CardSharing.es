
public class CardSharingController extends BaseController {

	private static const GET_CMD : String = "mcai GET %s"
	private static const SET_CMD : String = "mcai SET %s %s"
	private static const RESET_CMD : String = "mcai RESET %s"
	private static const SAVE_CMD : String = "mcai SAVE %s"
	
	private static const BUNDLE_KEY : String = "CS_REG1"
	private static const REG_KEY : String = "CS_REG2"
	private static const SERVER : String = "CS_SERVER"
	private static const STATUS : String = "CS_STATUS"
	private static const SN : String = "CS_SN"

	public var bundleKey: String = ""
	public var regKey: String = ""
	public var serverAddress: String = ""
	public var serialNumber: String = ""
	public var CSstatus: String = ""
	
	public var resultMessage = ""
	
	
    function CardSharingController() {
    }

    use namespace action

    action function index() {
		loadFormerProperties()
    }

	action function Save() {
		if (!Cmd.sh(SET_CMD.format(BUNDLE_KEY, params.bundlekey)).startsWith("TRUE")){
			resultMessage = "Bundle key setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(REG_KEY, params.regkey)).startsWith("TRUE")){
			resultMessage = "Registration key setup failed."
			resetInfocamValues()
		}
		/*
		else if (!Cmd.sh(SET_CMD.format(SERVER, params.server)).startsWith("TRUE")){
			resultMessage = "Server address setup failed."
			resetInfocamValues()
		}
		*/
		else if (!Cmd.sh(SAVE_CMD.format(BUNDLE_KEY)).startsWith("TRUE")){
			resultMessage = "Bundle key saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(REG_KEY)).startsWith("TRUE")){
			resultMessage = "Registration key saving failed."
			resetInfocamValues()
		}
		/*
		else if (!Cmd.sh(SAVE_CMD.format(SERVER)).startsWith("TRUE")){
			resultMessage = "Server address saving failed."
			resetInfocamValues()
		}
		*/
		else{
			resultMessage = "Settings updated gracefully"

			bundleKey = params.bundlekey
			regKey = params.regkey
			serverAddress = params.server
			serialNumber = Cmd.sh(GET_CMD.format(SN))
			CSstatus = Cmd.sh(GET_CMD.format(STATUS))
		}
		
		renderView("index")
	}
	
	private function loadFormerProperties(){
		bundleKey = Cmd.sh(GET_CMD.format(BUNDLE_KEY))
		regKey = Cmd.sh(GET_CMD.format(REG_KEY))
		serverAddress = "DEMO_SERVER"
		serialNumber = Cmd.sh(GET_CMD.format(SN))
		CSstatus = Cmd.sh(GET_CMD.format(STATUS))
	}
	
	private function resetInfocamValues(){
		Cmd.sh(RESET_CMD.format(BUNDLE_KEY))
		Cmd.sh(RESET_CMD.format(REG_KEY))
		Cmd.sh(RESET_CMD.format(SERVER))
		loadFormerProperties()
	}
}
