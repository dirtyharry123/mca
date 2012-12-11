/*
 *  BaseController.es - Base class for all controllers
 */

public class BaseController extends Controller {

    public var title: String = "infocam"
    public var style: String

    function BaseController() {
        style = appUrl + "/web/style/style.css"
    }
}
