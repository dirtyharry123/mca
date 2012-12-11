
public class UpgradeController extends BaseController {

	function UpgradeController() {
	}

	use namespace action

	action function index() {
	}

	action function Save(){
		filePath = Request().files['theFile'].filename
		fileName = Request().files['theFile'].clientFilename

		//TODO: Check firmware
		//TODO: Do upgrade
		
		results = Cmd.sh("cp " + filePath + " /tmp/" + fileName) 

		if (results == ""){
			redirect("/infocam/")
		}
		else{
			redirect("/infocam/System")
		}
	}

}
