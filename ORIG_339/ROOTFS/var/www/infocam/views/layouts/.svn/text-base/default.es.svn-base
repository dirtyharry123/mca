

public dynamic class _Solo_layouts_defaultView extends View {
    function _Solo_layouts_defaultView(c: Controller) {
        super(c)
    }

    override public function render() {

write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">
<head>
    <meta http-equiv=\"content-type\" content=\"text/html;charset=UTF-8\" />
    <title>");

write("" + title);

write("</title>
    ");
stylesheet(["web/layout.css" ]); 
write("
</head>

<body>
    <div class=\"top\">
        <h1><a href=\"");

write("" + appUrl);

write("/\">Infocam Application</a></h1>
    </div>

    <div class=\"menu\">
        <table>
            <tr>
                <td> <a href=\"/Network/\"> Network</a>    </td>
                <td> <a href=\"/Firmware/\"> Firmware </a> </td>
            </tr>
        </table>
    </div>

    <div class=\"content\">
        ");
__ejs:CONTENT:ejs__
write("
    </div>

    <div class=\"bottom\">
        <p class=\"footnote\">Powered by Ejscript&trade;</p>
    </div>
</body>
</html>
");

    }
}
