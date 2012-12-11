
public class EmailController extends BaseController {

	private static const GET_CMD : String = "mcai GET %s"
	private static const SET_CMD : String = "mcai SET %s %s"
	private static const RESET_CMD : String = "mcai RESET %s"
	private static const SAVE_CMD : String = "mcai SAVE %s"
	
	private static const POP_SERVER : String = "POP_SERVER"
	private static const POP_PORT : String = "POP_PORT"
	private static const POP_ADDRESS : String = "POP_ADDRESS"
	private static const POP_USER : String = "POP_USER"
	private static const POP_PASSWORD : String = "POP_PASSWORD"
	private static const POP_CHECKTIME : String = "POP_CHECKTIME"
	
	public var localServer: String = ""
	public var localPort: String = ""
	public var localEmail: String = ""
	public var localUser: String = ""
	public var localPassword: String = ""

	public var min5Status: String = ""
	public var min15Status: String = ""
	public var min30Status: String = ""
	public var day1Status: String = ""

	public var resultMessage: String = ""
	
	function EmailController() {
	}

	use namespace action

	action function index() {
		loadFormerSettings()
	}

	action function Save(){
		if (!Cmd.sh(SET_CMD.format(POP_SERVER, params.server)).startsWith("TRUE")){
			resultMessage = "Server address setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(POP_PORT, params.serverport)).startsWith("TRUE")){
			resultMessage = "Server port setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(POP_ADDRESS, params.email)).startsWith("TRUE")){
			resultMessage = "Email Address setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(POP_USER, params.user)).startsWith("TRUE")){
			resultMessage = "User name setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(POP_PASSWORD, params.password)).startsWith("TRUE")){
			resultMessage = "Password setup failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SET_CMD.format(POP_CHECKTIME, params.serverport)).startsWith("TRUE")){
			resultMessage = "Checktime setup failed."
			resetInfocamValues()
		}
		
		else if (!Cmd.sh(SAVE_CMD.format(POP_SERVER)).startsWith("TRUE")){
			resultMessage = "Server address saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(POP_PORT)).startsWith("TRUE")){
			resultMessage = "Server port saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(POP_ADDRESS)).startsWith("TRUE")){
			resultMessage = "Email Address saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(POP_USER)).startsWith("TRUE")){
			resultMessage = "User name saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(POP_PASSWORD)).startsWith("TRUE")){
			resultMessage = "Password saving failed."
			resetInfocamValues()
		}
		else if (!Cmd.sh(SAVE_CMD.format(POP_CHECKTIME)).startsWith("TRUE")){
			resultMessage = "Checktimesaving failed."
			resetInfocamValues()
		}
		
		resultMessage = "Email settings modified succesfully."
		
		localServer = params.server
		localPort = params.serverport
		localEmail = params.email	
		localUser = params.user
		localPassword = params.password
		
		switch(params.check){
			case "0":
				min5Status = "selected"
			case "1":
				min15Status = "selected"
			case "2":
				min30Status = "selected"
			case "3":
				day1Status = "selected"
		}

		renderView("index")
	}
	
	private function loadFormerSettings(){
		localServer = Cmd.sh(GET_CMD.format(POP_SERVER))
		localPort = Cmd.sh(GET_CMD.format(POP_PORT))
		localEmail = Cmd.sh(GET_CMD.format(POP_ADDRESS))
		localUser = Cmd.sh(GET_CMD.format(POP_USER))
		localPassword = Cmd.sh(GET_CMD.format(POP_PASSWORD))
		
		switch(Cmd.sh(GET_CMD.format(POP_CHECKTIME))){
			case "0":
				min5Status = "selected"
			case "1":
				min15Status = "selected"
			case "2":
				min30Status = "selected"
			case "3":
				day1Status = "selected"
		}
	}
	
	private function resetInfocamValues(){
		Cmd.sh(RESET_CMD.format(POP_SERVER))
		Cmd.sh(RESET_CMD.format(POP_PORT))
		Cmd.sh(RESET_CMD.format(POP_ADDRESS))
		Cmd.sh(RESET_CMD.format(POP_USER))
		Cmd.sh(RESET_CMD.format(POP_PASSWORD))
		Cmd.sh(RESET_CMD.format(POP_CHECKTIME))
		loadFormerSettings()
	}
}
