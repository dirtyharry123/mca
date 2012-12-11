
public class SystemController extends BaseController {

	private static const GET_INFO_CMD = "mcai GET %s"

	public var ModelName: String = Cmd.sh(GET_INFO_CMD.format("SYS_MODEL_NAME"))
	public var HWVersion: String = Cmd.sh(GET_INFO_CMD.format("SYS_HW_VER"))
	public var FWVersion: String = Cmd.sh(GET_INFO_CMD.format("SYS_SW_VER"))
	public var SerialNumber: String = Cmd.sh(GET_INFO_CMD.format("SYS_SN"))
	
	public var CSSerialNumber: String = Cmd.sh(GET_INFO_CMD.format("CS_SN"))
	public var CSBundleKey: String = Cmd.sh(GET_INFO_CMD.format("CS_REG1"))
	public var CSRegKey: String = Cmd.sh(GET_INFO_CMD.format("CS_CREG2"))
	public var CSStatus: String = Cmd.sh(GET_INFO_CMD.format("CS_STATUS"))
	
    function SystemController() {
    }

    use namespace action

    
    action function index() {
    }


}
