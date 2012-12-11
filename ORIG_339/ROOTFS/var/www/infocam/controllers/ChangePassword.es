
public class ChangePasswordController extends BaseController {

	private static const CHANGE_PASSWORD_CMD : String = "httpPassword -p %s /etc/appweb/infocam-auth.db infocam admin"
	
	public var resultMessage: String = ""
	
    function ChangePasswordController() {
    }

    use namespace action

    
    action function index() {
    }

	action function Save() {		
		String cmd = CHANGE_PASSWORD_CMD.format(params.newPassword)
		result = Cmd.sh(cmd)
		resultMessage = "The admin password was changed gracefully."
		renderView("index")
	}

}
