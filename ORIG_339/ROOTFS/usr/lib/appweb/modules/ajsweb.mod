��         �� ��  �� ejs ejs.db ejs.web internal-0 DIR_PERMS [EjsWeb,private] Number FILE_PERMS RC String .ejsrc DefaultLayout views/layouts/default.ejs NextMigration .ejs/nextMigration database sqlite applyMigration Boolean appName binDir Path command config Object db Database dbPath debug keep layoutPage libDir modDir mode overwrite reverse searchPath verbose compiler ejsweb lib join modules dirname ejsc appweb Can't find required lib directory:  ../modules config/config.ecf app  .exe trimEnd toString ejsweb.mod ajsc config/compiler.ecf " " --debug --web /ajsc/ replace /ejsc/ EjsWeb -constructor- defaults ~/ loadDefaults Void intrinsic cmdArgs private Array i -hoisted-4 -a --apply --database --debug -k --keep --layout --overwrite -q --quiet --reverse --search -v --verbose - startsWith rest cmd toLower browse clean compile console deploy import install generate migrate run parseArgs args 
Usage:   [options] [commands] ...
   Options:
     --apply                      # Apply migrations
     --database [sqlite | mysql]  # Sqlite only currently supported adapter
     --keep
     --layout layoutPage
     --reverse                    # Reverse generated migrations
     --overwrite
     --quiet
     --verbose
 pre          Commands:
 clean
 compile [all | app | controller names | view names]
 compile path/name.ejs ...
 generate app name
 generate controller name [action [, action] ...]
 generate migration description model [field:type [, field:type]...]
 generate model name [field:type [, field:type]...]
 generate scaffold model [field:type [, field:type]...
 import
 migrate [forward|backward|NNN]
 usage files controllers /\.mod$/ views models App.mod [CLEAN] f -hoisted-2 StopIteration iterator everything . kind ejspat /\.ejs$/ pat /\.es$/ name -hoisted-10 -hoisted-11 web -hoisted-12 all saveVerbose saveKeep src viewFiles esPages -hoisted-13 getValues /^views\/layouts\// contains append webFiles -hoisted-14 App -hoisted-15 controller -hoisted-16 -hoisted-17 model WARNING: models must be built with the app. Use "  compile app" -hoisted-18 -hoisted-19 view -hoisted-20 -hoisted-21 -hoisted-22 normalize -hoisted-1 es : Can't compile  compileItem file ejs.io testFile toPascal .es joinExt exists File " " is not a controller Controller : " " does not exist controllers/Base.es buildController Model : " buildModel /^views.layouts/  " is not a view. Path should be "views/CONTROLLER/VIEW.ejs" buildView ext File is not an Ejscript web file:  Can't find ejs page:  Can't find view file:  sansExt controllerMod controllerSource controllerPrefix viewName basename /(\\|\/)+/g _ Base _Solo controllers/ .mod Can't find controller   for view  [PARSE] ep EjsParser results /\${CONTROLLER}/g /\${VIEW}/g esfile e Can't write module file:  . Ensure directory is writable. out .tmod  --out   --search " " App.mod  "  [BUILD] Compilation failed for  
 buildWebPage isView public trim /^\/|^[a-zA-Z]:\// match split parts path slice getCompilerPath buildFiles /Base.es$/ buildApp /.es$/ build No yet supported webserver /^[^ ]+/ / $& [RUN] exe WIN .dll MACOSX .dylib .so ejswebserver binFiles libcrypto libssl libmprssl extFiles ejswebserver.conf confFiles ejs.db.mod ejs.mod ejs.db.sqlite.mod ejs.web.mod modFiles ejs.db.sqlite modLibFiles libpcre libec libmpr libsqlite3 libejs libFiles -hoisted-3 bin dest WARNING: Can't find:   Continuing ... Import -hoisted-5 -hoisted-6 -hoisted-7 -hoisted-8 bin/ejswebserver.conf readString data /DocumentRoot ".*"/ DocumentRoot "../web" write uninstall migration Create Model  scaffold db/migrations sort onlyOne backward targetSeq id migrations findAll lastMigration forward forw back found -hoisted-9 base /^([0-9]*)_.*es/ $1 seq Can't find target migration:  version /^([0-9]+).*es/ appliedMigration Migration [MIGRATE] Reverse  Apply  remove save [OMIT] All migrations reversed All migrations applied /\${HOME}/g top src/appweb /src/server /ejswebserver/g argv endsWith /^\/|^[a-zA-Z]:/ buildConfig.make prev Can't find buildConfig.make in local source tree findTop dir File .tmp .ejs doc logs messages test utils views/layouts web/default web/images web/themes .. 
Change directory into your application directory:  Then run the web server via: "  run" and point your browser at: http://localhost:4000/ to view your app. generateApp /\${NAME}/g /\${PATH}/g toJSON prog /\${WEBSERVER}/g /\${COMPILER}/g config/database.ecf config/view.ecf generateConfig Layout generateLayouts default-web Can't find default-web at  -hoisted-0 /.*/ length Web File generatePages BaseController generateBaseController src/App.es generateAppSrc README generateReadme db/ .sdb _EjsMigrations version:string generateDatabase actions /\${APP}/g index action actionData /NEXT_ACTION/ NEXT_ACTION /\${MODEL}/g /\${LOWER_MODEL}/g Controller generateController /\${COMMENT}/g /\${FORWARD}/g /\${BACKWARD}/g %Y%m%d%H%M%S /[    ]+/g fileComment db/migrations/ Migration   already exists. Try again later. createMigrationCode comment attribute : column datatype Unsupported data type: " " for column " validateAttributes attributes tableName         db.createTable(" ", [" ", " "])         db.destroyTable(" ") col spec         db.addColumn(" ")
         db.removeColumns(" ", [ ",  ]) createMigration tableExists generateMigration s WARNING: Models should typically be singluar not plural. Continuing ... models/ [EXISTS] Migration (model already exists) Model generateModel /[a-zA-Z_]*/ Bad model name  views/ Create Scaffold  
Don't forget to apply the database migration. Run: "  migrate" generateScaffold stndActions list create edit update destroy toCamel generateScaffoldController extraActions View generateScaffoldViews dirs d Can't find " " directory. Run from inside the application directory " Run from inside the application directory
 Use   generate app NAME to create a new Ejscript web application isApp fatal what trace checkApp settings obj key loadConfigFile objName mandatory Can't open required configuration file:  {   } Error Can't load  loadEcf Config File makeConfigFile p [EXISTS]  [CREATED]  [OVERWRITTEN]  w makeFile msg Directory makeDir copyFile from to result got glob pattern RegExp recurse globSubdirs segments getNthSegment nth Compilation failure, for  

 /Error Exception: Command failed: Status code [0-9]*.\n/ traceFile    :  tag plural word singular Exiting abort clone Function deep get Iterator constructor _EjsMigration fields _EjsMigration-initializer -initializer- Record Record-initializer _assocName ejs.db.int _belongsTo _className _columns _hasOne _hasMany _db _foreignId _keyName _tableName _trace _validations _beforeFilters _afterFilters _wrapFilters ErrorMessages initialize field afterFilter fn options beforeFilter belongsTo owner cachedRead [ejs.db::Record,private] rec checkFormat thisObj value checkNumber checkPresent checkUnique grid coerceToEjsTypes Column createAssociations set preload association createRecord subOptions error find findOneWhere where findWhere count getColumnNames getColumnTitles getColumnType getDb getErrors getKeyName getNumRows getSchema sql row sqlType ejsType getTableName hasAndBelongsToMany hasError hasMany hasOne innerFind limit columns conditions entry tname whereConditions cond makeLazyReader --fun_8177-- lazyReader mapSqlTypeToEjs prepareValue readRecords keys runFilters filters filter only saveUpdate setDb setKeyName setTableName on validateFormat validateNumber validatePresence validateRecord thisType validation check validateUnique wrapFilter columnNames columnTitles keyName numRows _keyValue _errors _cacheAssoc Config 
app: {
    mode: "debug",
    webserver: '"${WEBSERVER}" --home "${HOME}" --ejs "/:${PATH}" --log stdout:2',
},
 Compiler 
debug: {
    command: '${COMPILER} --lang fixed --debug --optimize 9 --web ',
},

test: {
    command: '${COMPILER} --lang fixed --debug --optimize 9 --web ',
},

production: {
    command: '${COMPILER} --lang fixed --optimize 9 --web ',
},
 
debug: {
    adapter: "sqlite3",
    database: "db/${NAME}.sdb",
    username: "",
    password: "",
    timeout: 5000,
    trace: true,
},

test: {
    adapter: "sqlite3",
    database: "db/${NAME}.sdb",
    username: "",
    password: "",
    timeout: 5000,
    trace: false,
},

production: {
    adapter: "sqlite3",
    database: "db/${NAME}.sdb",
    username: "",
    password: "",
    timeout: 5000,
    trace: false,
},
 
connectors: {
    table: "html",
    chart: "google",
    rest: "html",
},

 /*
 *  BaseController.es - Base class for all controllers
 */

public class BaseController extends Controller {

    public var title: String = "${NAME}"
    public var style: String

    function BaseController() {
        style = appUrl + "/web/style.css"
    }
}
 
public class ${NAME}Controller extends BaseController {

    public var ${LOWER_MODEL}: ${MODEL}

    function ${NAME}Controller() {
    }

    use namespace action

    NEXT_ACTION
}
 ScaffoldController 
public class ${NAME}Controller extends BaseController {

    public var ${LOWER_MODEL}: ${MODEL}

    function ${NAME}Controller() {
    }

    use namespace action

    action function index() { 
        renderView("list")
    }

    action function list() { 
    }

    action function edit() {
        ${LOWER_MODEL} = ${MODEL}.find(params.id)
    }

    action function create() {
        ${LOWER_MODEL} = new ${MODEL}
        renderView("edit")
    }

    action function update() {
        if (params.commit == "Cancel") {
            redirect("list")

        } else if (params.commit == "Delete") {
            destroy()

        } else if (params.id) {
            ${LOWER_MODEL} = ${MODEL}.find(params.id)
            if (${LOWER_MODEL}.saveUpdate(params.${LOWER_MODEL})) {
                inform("${MODEL} updated successfully.")
                redirect("list")
            } else {
                /* Validation failed */
                renderView("edit")
            }

        } else {
            ${LOWER_MODEL} = new ${MODEL}(params.${LOWER_MODEL})
            if (${LOWER_MODEL}.save()) {
                inform("New ${LOWER_MODEL} created")
                redirect("list")
            } else {
                renderView("edit")
            }
        }
    }

    action function destroy() {
        ${MODEL}.remove(params.id)
        inform("${MODEL} " + params.id + " removed")
        redirect("list")
    }

    NEXT_ACTION
}
 ScaffoldListView <h1>${MODEL} List</h1>

<% table(${MODEL}.findAll(), {click: "edit"}) %>
<br/>
<% buttonLink("New ${MODEL}", "create") %>
 ScaffoldEditView <h1><%= (${LOWER_MODEL}.id) ? "Edit" : "Create" %> ${MODEL}</h1>

<% form("update", ${LOWER_MODEL}) %>

    <table border="0">
    <% for each (name in ${MODEL}.columnNames) {
        if (name == "id") continue
        uname = name.toPascal()
    %>
        <tr><td>@@uname</td><td><% input(name) %></td></tr>
    <% } %>
    </table>

    <% button("OK", "commit") %>
    <% button("Cancel", "commit") %>
    <% if (${LOWER_MODEL}.id) button("Delete", "commit") %>
<% endform() %>
 ScaffoldView <h1>View "${CONTROLLER}/${VIEW}" for Model ${MODEL}</h1>
<p>Edit in "views/${CONTROLLER}/${VIEW}.ejs"</p>
 Action 
    action function ${NAME}() {
    }

 /*
 *  ${NAME}.es - ${NAME} Model Class
 */

public dynamic class ${NAME} implements Record {

    function ${NAME}(fields: Object = null) {
        constructor(fields)
    }
}
 /*
 *  ${COMMENT}
 */
require App
require ejs.db

public class Migration {

    function forward(db) {
${FORWARD}    }

    function backward(db) {
${BACKWARD}
    }
}
 Readme 
README - Overview of files and documentation generated by ejsweb

These Directories are created via "ejsweb generate ${NAME}:"

    bin                       Programs and scripts
    config                    Configuration files
    controllers               Controller source
    db                        SQL databases and database scripts
    db/migrations             SQL database migration scripts
    doc                       Documentation for the application
    logs                      Log files
    messages                  Internationalization messages
    models                    Database models
    src                       Extra application source
    test                      Test files
    views                     View source files
    views/layouts             View layout files
    web                       Public web directory
    web/themes                Theme style sheet directory
    .ejs                      State files used by ejsweb
    .tmp                      Temporary files

These files are also created:

    config/compiler.ecf       Compiler options
    config/config.ecf         General application configuration 
    config/database.ecf       Database connector configuration 
    config/view.ecf           View connector configuration 
    views/layouts/default.ejs Default template page for all views
    web/layout.css            Default layout style sheet
    web/themes/default.css    Default theme style sheet
    web/images/banner.jpg     Default UI banner
 ViewHeader 

public dynamic class ${CONTROLLER}${VIEW}View extends View {
    function ${CONTROLLER}${VIEW}View(c: Controller) {
        super(c)
    }

    override public function render() {
 ViewFooter 
    }
}
 AppSrc 
require ejs.db
require ejs.web

module App {
}
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <title>@@title</title>
    <% stylesheet(["web/layout.css", "web/themes/default.css" ]); %>
    <% script(["web/js/jquery.js", "web/js/jquery.tablesorter.js", "web/js/jquery.ejs.js"]) %>
</head>

<body>
    <div class="top">
        <h1><a href="@@appUrl/">${NAME} Application</a></h1>
    </div>
    <div id="logo">EJScript&trade;</div>

    <% flash(["inform", "error", "message", "warning"]) %>
    <div class="content">
        <%@ content %>
    </div>

    <div class="bottom">
        <p class="footnote">Powered by Ejscript&trade;</p>
    </div>
</body>
</html>
 Templates Templates-initializer Err Eof EjsTag Var Literal Equals Control tokens Token Token-initializer ContentMarker [EjsParser,private] __ejs:CONTENT:ejs__ ContentPattern LayoutsDir appBaseDir script pos lineNumber token ByteArray tid 
write(" ");
 
write("" +  );
 
write("" + ( ));
 /\s/g include ' incPath inc layout "" Can't find layout page  content Bad control directive:  Bad input token:  layoutText /\$/g $$$$ parse appDir c < % \ = > @ isAlpha isDigit [ ] $  getToken isSpace eatSpace ejsweb:  . At line  eweb -hoisted-171 block_0000_0 -block- __initializer__ default ��;  
��%  ��7  ���	 � ��  (
}23�
3�
3�
3�
3�
}�� ��}� }�}�� ��}� = =���U��}� p}�E ;#:T��� ���  	
�*����� � ��,����2 �� ���@    �	P��P��U��U��U��U��N�N�N�q�U��$N�&N�(D�,}�� �v}��. $}��, � }��0 �"<�  v�U�� �� v�U�� ��"� ���qv�z� U�� �� v�z� U�� ��"� ���?vU�4���8�vU�4���v� v�"=}��$ U�+	U��  �= = = ` �}�� U�� ��*=}�� U�� ��*�*}��& U�Nf����z��z� �$=�� �}�� U�C{��U�����  ��0�0U�$8��0U�$U��.=U��.U�U�Nd�z��}`$:�� ������ �z��U��$�U��. U� �z��U��${���=t�0U�$8��0U�$2�z��U�U�{z� T�U�� ��z��U�U�{�� =0�z��U�U�{z� T�U�� ��z��U�U�{�� ��	(  �   4pU�	d�8�U�	p U�	d����( ���� �	D�^Z�*�  ZU�^{8U�
%=8U�
%	W�<�  =8U�
%ZU�^>8�{�<�  =8U�
%
W�<�  =8U�
%=8U�
%
W�<�  =8U�
%ZU�^>8�{�<�  =8U�%
W�&<�  =8U�%=8U�%
C�,<�  =8U�%
W�(<�  =8U�%ZU�^8>�{8}��& �*<�  =8U�%=8U�%�,8>�,�<T   ZU�^{U���� N�= Z^:��P���< 	8y�^8>��<�  [S$8�[�C$ N�= [D:��[U�C{�  ��]8U�%]\b\,<�  =8U�%\<�  =8U�%` �]\b= \<�  =8U�%]\b\<�  =8U�%]\b\.<�  =8U�%]\b\0<�  =8U�%]\b\2<�  =8U�%]\b\6<r   =8U�%]\b\8<D   =8U�%]\b\:<   [�\<   �t8 = W�
��	  
�	�	 
��	 
��	 �
�
�
 ��(  �  �U��0 U� U� U� U� U� U� U� U� U� U� �U��0 U� �U�Z U� Z U� Z U� Z U� Z U� Z U� Z U� Z U� Z U� Z U� Z U� U� �}�D �
��	   �(  ��U�T�p�U�T�p� U�T�p� } �8U��U�C� �U�[z[ �8 ��\�=�x~��  �
��	  
��	 
��  �(  �,�Z�C$` �	ZU�=ZU�= ZU�C{�  ��ZD:��T��T��\8U�%c( U�_p� �8 ��~=�U�^p��[ �8 ��~ =�U�^p��}`�[ �8 ��~"=�<�  =
8U�%�  �,���C�,( U�_p�U�_p� U�_p� U�_p� �U�^p��} ����b�� �8 ��~�  �T�� ��x��~NW"�� = =ϏU�^p��}`�c�� �8 ��x��~N"�� =�[x�� �a�`�,U�[&��x���� �8 ��~�=�= <�  =8U�%
( <�  =8U�%=8U�%@]�C$U�_p� �8 �� ~ =�=] �8 ��"~"=�<�  =8U�%=8U�%KU��0 U� �]�C$U�_p� �8 ��$~$=�=] �8 ��&~&=�<�  =8U� %=8U�%>]�C$U�^p� �8 ��(~( =�=] �8 ��*~* =�<@   Z �8 ��,~,���b z�  =描����� ����� ����� ����� ����� ����� ����� ����� ����� ��	�	�	�	 ��	�	�
�
 ��
�
�
�
 ��
�
�� �
��	  
��	 
��	 �
��	 
��	  
��	 
 
��	  
��	  
��	  
��	  
��  
��  
��  
��  
��  
��  
��   
�� " 
�� $ 
��  & 
� �  ( 
� �  * 
��  , �!(   �Z�,!Z�JW� ��� �8 ��[=�=6Z�"U$}`�Z
 �"=Z�"U�!$
Z
 �*=�0U�! Z p�28HH  �
�!�	  �
��!  �(  � U�}�[ �
��	  
��	  �#( ����  �Z�X�U���Z�F�"  �4�U�"�"���[z�" [�= ZU�t��U�"Z U�" �= Z� �U�"Z U�# �= ZU�#n��= Z*S�
�!�	  �
�!�	  �$(    �Z�X�U���Z�F�"  �4�U�"�"���[z�" [�= ZU�t��U�"Z U�" �= Z� �U�#Z U�# �= Z*�
�!�	  �
�!�	  �%( ����    zZ�X�Z�FT�$� ��= ZU�tZU�t��U�"Z U�$ �= ZWW"S�
�!�	  ��,( �����"�@W�N�Z�"�]U�$
ZU6��=]U+U�%Z �= Z� �]U�&Z �=U�&Z �= Zz ��\^Dt��"� ��^z�( �=.^z� T�(U�(� ��U���
U�(U�( �=U�(U�( �U�(_ U�( �U�(_ U�" �\5a��`���U�(_ U�" *= _U�( �=U�(a U�) Z �= �,D(	U�)Zz= }�� �}��* ~Z}�� �� }��,  ��)�x�)�T�)b� ���)�x�)�T�*c� ���)�^U�" �~��x�)��=��U�*| U�* �;[�  ^U�+ �$ ��`��!~U�+~ U�+ �* U�+ ` U� ~  �=7u~U�+~ U�+ �* U�+ ~  �=~U�+~ U�+ �* U�+ ~  ��,D(
U�,~z=U�,Zz~v~���U�,~ U�, x�)� �= ��~�= ~^U�( �= ~�����  �
�!�	  �
��	���
�,�	���
�%�	  
�&�	  
��	 
�
�'�	 �
�'�	 �
�'�	 �
�'�	 �
�)�	 �

�*�	  
�*�  
�+�  
�� ��-( �����$  ��z��U��${z���ZU��, �T�-�- �Z�= ZU��- ���-�}�� x�-�U�C{U��, �� ��U�[ U�+ x�-�D�- �U�� � �Z�
��	   
�-�	  �.(   & �ZU�+ �$ �U�+ \ U�+ �* U�+ [U�&� ��,D(	U�,]z=U�,[U�&�z]v��\���U�,\ U�, ^ �= \ZU�( ��
��	  �
��	 
�+�	  
��	  
�)�	  �.(  �(  `T��U�U�Zp�U�Zp� U�Zp� U�T�.p� &�
��	   �.(   * �ZT�.U�:��[U�+ �u$ �U�+ \ U�+ �* U�+ Z �=$ �U�+ \ U�+ �* U�+ Z ��,D(	U�,]z=U�,Zz]v��\���U�,\ U�, ^ �= \[U�( ��
��	  �
��	  
�+�	  
��	 �
�)�	  �(  �, �U�.ŀz��z�. �[T�-�- ��$[U��, �T�/}�� U�/ U�/ � ��= U�/[z}�[ �
��	  
��	  �(  �.   
��	  �(  �0�W�&U��U��}��" 8U�/%U��U�/�<6   =8U�/%	U�/�<   U�/�<   �} �8U�U�C�8U��U�D�8U��U�E�8U�/�U�F���0�} �8U�0�U�C�8U�0�U�D�8U�0�U�E���0�} �8U�0�U�C���1��"U�14����  } �8U�1�U�C�8U�1�U�D�8U�1�U�E�8U�1�U�F�8U��U�G���2�} �8U�2�U�C�8U�U�D���2�} �8U�2�U�C�8U�2�U�D�8U�2�U�E�8U�2�U�F�8U�3�U�G���3�=R} �8U�1�U�C�8U��U�D���2�} ���2�} ���3�} �8U��U�C�8U��U�D�8U�/�U�E���0�x�2��� �8 ���"]4����U�3��]4���3�x�����U�3] U�4 p= x��x�3�U�4nx�3�P��=��x�2��� �8 ���"^4�
 �\ ���U�3��^4�
 �\ ��3�x�����U�3^ U�4 p= x��x�3�U�4nx�3�P��=��x�3��� �8 ��U�3��_4�\�"����3�� _4�\�"�����x�����U�3_ U�4 p= x��x�3�U�4nx�3�P��=��x�0��� �8 ��U�3��`4�[�"����3�v`4�[�"�����x�����U�3` U�4 p= x��x�3�U�4nx�3�P��=��x�0��� �8 ��U�3��a4�\�"����3�va4�\�"�����a��x��x�3�U�4nx�3�P��= =��N�&x�1��� �8 ��U�3��b4���3�� b4����x�����U�3b U�4 p= x��x�3�U�4nx�3�P��=��}��U�5��-�x�-��5  ���5�x�-�x�5�T�5U�5� ��6 �����  ����	�	  ��
�
��  �����  �����  �����  �
��	  
�/�	  
��	  
�!�3  
�!�
  
�!�4 
 
�!�4  
�!�4  
�!�4  �(  �2   
��	  �6(  �4   
��	  �( �����6 �Z�C$	ZU�= ZU�C{�  ��ZD:��\�C$ �= [8U�%\><� =8U�%\N<�  =8U�6%\V<p   =8U�%\U�6\U�C{�"  � X<,   =8U�6%	\Z<    ���
��	  
��	 �
��	 �( �����8 �@S�U�7��& ��7� ��N�N�S�S�U����( = U���&��L = }��8
 ��`D��- ��Z8�Z�C(ZC:�
 ��� ����=U����x��U�8$8
�x��U�8$W�<�  x��U�7$8
�x��U�8$	W�W�<� �x��U�+� x���N�[�� �8 ��c���� ��^��~$~T�8U�9� ��W�=~T�8U�9� ��~^$W�= =��b�U�9^ �= a8�^aU�C{z�9 *W�= = ]
[�  ��= [�� �8 ��~S$�<�  = ~��
 ��~T�9�- ��<k   = ~T�8U�9� ��~U�$<�  = N�`�� �8 �� ~ U�U�9{~$W�~ U�U�7{�= =ڏ]~��^8�^~$�= = ~��  U�U�:6=;~�]U�:U�:~ zx�:�� ��7 =U�:U�:~ zx�:�� ��8 ]}�_�;
=)}�� ��6�~�  �x�6�U�U�9�x�6��;  \�= = ]�8�^8�^~$�= <�  �\]U�;U�;z=	U�;U�;z= �����  ����� ����� ����
�
  �
��	��� 
��	  
�7�	  
�7�	  
�7�	  
�7�	 
 
�7�	  
�8�	  
�8�4  
��8  
�8�  
�9�  
��  
�8�  
�9�  
�8�  
�:�   �(  �: ��z��z�. �}�� }��. $[T�<� � ��=h}�� � $[T�<� � ��=N}�� <���<�}��$ U$[T�<x�<�U�<� �� ��=[T�<x�<�U�<� �� ��}��$ U�$[T�<U�� ��= [U��- ���<�x�<�U�C{U�� �8�x�<�U�C{U��< �.x�<�U�C{U��, �x�<�U�C�x�<�U�� ��= [T�=�- ��8�[U�� ��[T�/}�� U�/� �� ��= U�/[z}�[ �
��	  
��	  �>( ���� <  bZU�=4���Z�= Z��=�Z�R�Zx�=�n���U�=�S�
�>�	  ��B(  �> �ZU�C{�  ��}��u�ul}�u U�>lU�>lU�3lU�lU�lU�lU�7lU�>lU�>lU�lU�?lU�?lU�lU�?lU�lU�?lU�lU�?lU�?lU�?lH @ B D F J L U�} �8U�#�U�C�&}�U�@ �, U�@u �U�@�0 U�A �U�A�= �
��	  
��	 ��D(  �@  �}�� T�Bu� ��ZT�C}�� �C  �U��, �� ��}��$ U$U�/=U��v[4� �U��,���ZT�C\� ��}��" U�/$v=� �ZT�<]�C  �U��, �� ��U�ZhU�}�� T�C�.� �hU�C}�� hU�D}�� h�
�5�	   
�C�	  
��	  
�>�	  �D(  �B  @}��0 T�Bu2 �� ��U�ZU�Dj�
�5�	   �F(  �D �� U�E4���-�x�-����U�Ex�-� �= x�-�T�Ep� �8 ��ZU�Zz� x�-�z�E �- � U�Fn=ُ�pv��  �
��E   �F(  �F  <U�#�}�� T�Bu� ��Z[U�Fj�
�-�	   
�5�	  �G(  �H  $}��. �U�FZU�j�
�5�	  ��G(  �J  @}��( T�Bu2 �� ��U�GZU�Gj�
�5�	  ��H(  �L   h}��sU�Gu U�G ���WH= �U�G} �8U�H�U�C���J(  �N�ZU�C{�"  ��ZD:��U�([ U�" �}�� T�B[� ��^T�Hu:��\z�E C$\U�H� = \�� �8 ��}��" T�B_� ��^T�I`U�I :��=ُ^T�IU�:��^T�I[2 �:��^T�I[L �:��]^U�Jj�����  �
��	  
��	 �
�H�	  
�-�	 �
�5�	 �
�H�4 
 
�I�4  �L(   P  �}��& ��5�x�5�T�J]� ���5�x�5�T�J[� ���5�x�5�T�K\� ���5�}� U�K���9�]T�KU�(:���K�U�Kx�9� U�( x�K� U�" ��-�x�-���U�Lx�-� U�L �= x�-�x�5�U�:j�
��	  �
�8�	 �
�7�	 �
�M�	 ��N(  �R�Z �8 ��[U�M�- �U�C{��M�[U�M�- �U�D{��M��x�M� �}`$U�Mx�M� U�N x�M� U� �= =�����  �
�N�	  
�M�!  �Q(  �T
�Z|��"� ��U��U��[8�[�C(�	 [R]�&U�N^ U�O [U�O&� U�O �U�O^ U�P �<�x�U��[ �8 ��aU�M�- ���P�_U�P^ U�O x�P�U�C{ U�O x�P�U�D{ U�P  �=��U�P^ U�Q �[ �8 ��`U�bU�M�- �U�C{ U�Q  �=ޏ`U�Q �=�(U�O^ U�P �= �(	Z`_\P=Z_`\P�����  �����  �
��	  �
�N�	 
�M�	 �
�Q�	 
�N�	  
�8�	 
 
�7�	  
�P�4  
�P�4  �Q(  �V  pZ�E* = ZU�C{��M�ZU�D{���x��ZE:�x�M�WT�
��	  �S(  �X �ZU�C{�"  ��\U�Q�U�Qp= U�S\ U�" �]��8��&�	]U�Sx=\ZD:�[NT}��$ T�B\� ��]^U�Sj�
��	  
�M�	 �
��	 �
�-�	  
�5�	  �V(  �Z �ZU�C{�[T�T�- �[+U�T[ �= [�"  ��ZE:��U�T\ lZU�T[ X\[\\[^( t�U�U�0 U�U �= �
��	  
��	  
��	  
�N�	  �W(  �\�@S�Z2 ��U�(] U�" �} �8U�H�U�C�8U�V�U�D�8U�V�U�E�8U�V�U�F�8U�V�U�G�8U�V�U�H��} �8U�V�U�C�8U�V�U�D��} ��\&\ �8 ��_c��ac�V  �= =�= }�� T�Hu2 �� ��bT�B]:��bT�I[2 �:��bT�I[L �:��a �8 ��}��" T�B~� ��bT�I~U�I :��=ՏbT�IU�:��^bU�Jj�����  �����  �
��	  �
��	 �
�W�	���
��	  
�-�	  
�V�	 

��	 
�H�	 
�5�	 �
�H�8  
�H�  
�I�  �W(  �^�@S�} �8U�H�U�C�8U�V�U�D�8U�V�U�E�8U�V�U�F�8U�V�U�G�8U�V�U�H��} �8U�V�U�C�8U�V�U�D��]  ��\&\ �8 ��]a��^a�V  �= =�= [2 ��^ �8 ��b8U�V%&}�� T�I[� ��`T�I[L �:��<�  =8U�V%}�� T�I[� ��<p   }��  T�I[� ��`T�I[L �:��`T�)Z:��`T�*b:��<    �U�TZ U�/ b U�> �c`U�Wj<�  ������  �����  �
��	  �
��	 �
�W�	���
�V�	 
��	 
�H�	 

�5�	 �
�H�4  
� �4  
�-�8 ��[( ����`�@N�} �8U��U�C�8U��U�D�8U��U�E��[ �8 ��]���ZU�X] U�X �= N�= =܏} �8U��U�C�8U��U�D�8U�C�U�E�8U�D�U�F��\ �8 ��^���ZU�X^ U�Y U�Z �0 U�Z �= N�= =яW�\b��  �����  �
�[�	��� 
�X�	 
��	 
�X�3  
��
  �[( �����b �ZU�$O[U�C{�[U�C{U�$�= \U�+8�\U�+8�\U�6+8�\U�+8�\U�6+ }�  = = W`���= }�� z�( �  ��  ��U�Gu U�G �����L = }��sU�Gu U�G 8}��" ���WH}�W�[
= �
��	  �
��	 
�[�  �[( ����d~@N�Z\f��]S$N�= �� 8�U�[��] �8 ��]U�_{^U�_�=�W�RXxx  �
�!�	  �
�\�	 �
�\�	���
�[�	 �
�[�	  
�[�4 
 �]( �����f�@N�Z���[}�U�\Z �=S�= U�\Z��^ � U�] �\j��=��}�U�]|  U� | �;S�F||�  L
�-�	  �
�\�	���
�5�  
�*�3 L�]( �����h  JZ��8��&��= [T�Bu:��Z[U�]j�
�-�	  �
�5�	 ��^( �����j �}��Z�]� 8��&�ZU�]\ x�= ]� �ZU�^\ x=	ZU�^\ x}��Z�^U�^^[.^ �
�-�	  �
�5�	 �
�^�	 �
�]�	 �
��	 ��^( �����l  :Z���= U�^U�^ ZzZn��
�-�	  ��_( ���� n �}��[�]� 8��&�[U�]\ x�= ]� �[U�^\ x=	[U�^\ x]�lZ[�S�
�_�	  �
�_�	 �
�^�	 �
�]�	 ��_( ����p�@W�} � �Z��5\0ZW�� �8 ��^[p��_ �8 ��]`=�=ޏ= =Z
 �[�-��]}��Z= ]�jp�� �FL��  �
�-�	  �
�_�	 �
�_�	���
�_�	 
��
  
�_�4 

�
�4  �_( ����rV} � �ZW�� �8 ��\��[\= =�[�$*PP  �
�-�	  �
�_�	 
��  �`( ���� t pZT�(B��\�D]C'\U�C{U�$\]]4= ]8>���=�\U�[{�
�-�	  �
�`�	 �
�`�	 
�
�3 ��( �����v~}�Z ��=1��U�`|  U�` |�  �T�`U�� � ��^�x�^��;[� z  �
��	  �
�)�	  
�*�  �a(  �x  [U�Z U� z�
�-�	  �
�^�	 ��[( �����z  :�,U�aZ U�b [U�&� �= �
�b�	  �
��	 �b( �����|  ZU�Q �
�b�	  ��b(   ~   
�b�	  ��b(  ��  &�0U�b Z p U�bŽ
�^�	  �
>R�� �
�R���
�R���
�R���
�R���
�R 
�
�R 
�R �
�R �
�R �
�R �
�R �
�R �
�R 
�R 
�R �
�R  �
�R "�
�R $�
�R &
�R (
�R *�
�R ,�
�R .�
�R 0��c�,�������c� ���@ �  @S�Z�c
�
�c�	��� ��c�d ��   ����,���2  ���d �   �U�u�U�w�U�{�U���U���U̇�U��U��U���Uګ� U���"U���$U���&UԳ�(U���*U���,U���.U���0�
�u�,���  
�w�,���  
��,���  
�W�,���  
�F�,���  
�J�,���  
���,���  
���,���  
أ�,���  
���,���   
���,��� " 
�S�,��� $ 
�:�,��� & 
Ƴ�,��� ( 
���,��� * 
���,��� , 
���,��� . 
��,��� 0 ���,���  ���d �   �D��C�D�E�F�G�I�} �8U���U�C�8U���U�D�8U���U�E�8U���U�F�8U���U�G�8U���U�H�8U���U�I���
���,���  
���,���  
���,���  
���,���  
���,���  
���,���  
���,���  
���,���  �)�,��� �)� ����    ,U���}��n�U�?�C�C�����, ����� �}� �}� �[�\�Z��^ ��]�8�}�� +�  _8}�� %^U��] U�� H<�  =
8}�� %^U��]U��H<�  =
8}�� %^U��]U��H<�  =
8}�� %^]
 �H<�  =8}�� %�  ]
 �T���-���`U�C{�a8U��%F`U�D{U���, �U��, ��Z��b����}�� �^~cq}`�H<�  =8U��%�  `U�D{�~U�$8�~U��$}`�=Z`U�D{U���, �U��, �U�>�, �U�> �~���* ~�=p��~4��u���U��u = <:   =8U��%
^nH<   U��a �<*   =
8}�� %	U��] �<� u}`+8�uZ+-}�� uqu��~o^
 �T��U�����:��= ^
 ��
�!�	  �
���	 �
���	 �
���	 
�+�	 
���	 
�
��4 
��4 �
�-�4  
���8  
��� �

�-�  
��� ���( ����� �}�� �Z" sr�*�
  rU�s8>�{�\8U��%�  rU�s{U��$8�sE*8�rU�sE�{U��+�  Z�C(s8>���}�� �= s8>�� rU�s{U��$_s8>�� rU�s{8�}`+8)�\U��+8�rU�sD {U��+8�rU�sD�{U��$Z\Hs8>��=�sE �}�� �<�  rU�s{U��$Ks8>�� rU�s{8�}`+8�\U��+8�rU�sD {U��+Z\Hs8>��=�sE �}�� �=QrU�s{8�}`+8)�\U��+8�rU�sD {U��+8�rU�sD�{U��$Z\Hs8>��=�sE �}�� �= Z\H<�  =8U��%�  rU�s{U��$8�sD*8�rU�sD�{U��+�  Z�C(s8>���}�� �= s8>��rU�s8>�{�\z�� 8A�\z�� 87�\U��$8-�\U��$8#�\U�$8�\U��$8�\U�($8�\U��$Z\HrU�s8>�{�=�s8>���}�� �= Z\H<�  =8U��%=8U�,%t8>��Z\H}�� �<J   \U�$8�\U��$
ZU��H= Z\H<    �<�
  Z�C$8�sr�'	}�� �= [�
���	  
���	  
���	  ��(  �   .rU�s{z���s8>��=��b(  �  U��Z U�� t Ž
�^�	  �
������ �
�������
�������
���� �
���� �
���� 
�
���� �
��� �
���, ��
