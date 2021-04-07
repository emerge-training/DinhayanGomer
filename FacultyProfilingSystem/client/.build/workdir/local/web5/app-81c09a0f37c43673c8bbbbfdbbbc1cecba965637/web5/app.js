let AppAPIClient = function() {
	JkWidgetWebJSONAPIClientWithGui.call(this);
	this.widgetDefaultErrorHandler = null;
};

AppAPIClient.prototype = (function(o) { function F() {}; F.prototype = o; return(new F()); }) (JkWidgetWebJSONAPIClientWithGui.prototype);
AppAPIClient.prototype.constructor = AppAPIClient;
AppAPIClient.prototype._t = {
	"JkWebJsonJSONAPIClient" : true,
	"AppAPIClient" : true,
	"JkWidgetWebJSONAPIClientWithGui" : true
};
AppAPIClient.prototype._tobj = AppAPIClient;

AppAPIClient.NEW = function() {
	var v = new AppAPIClient;
	return v.CTOR_AppAPIClient();
};

AppAPIClient.prototype.CTOR_AppAPIClient = function() {
	this.widgetDefaultErrorHandler = null;
	if(JkWidgetWebJSONAPIClientWithGui.prototype.CTOR_JkWidgetWebJSONAPIClientWithGui.call(this) == null) {
		return null;
	}
	return this;
};

AppAPIClient.getInstance = function() {
	return AppAPIClient.instance;
};

AppAPIClient.create = function(context, parentWidget) {
	if(!(context != null)) {
		return null;
	}
	AppAPIClient.instance = AppAPIClient.NEW();
	AppAPIClient.instance.setApiUrl("http://ec2-13-228-27-39.ap-southeast-1.compute.amazonaws.com:30120");
	AppAPIClient.instance.setContext(context);
	if(parentWidget != null) {
		AppAPIClient.instance.setParentWidget(parentWidget);
	}
	return AppAPIClient.instance;
};

AppAPIClient.prototype.onError1 = function(error, callback) {
	if(!(callback != null)) {
		this.onDefaultErrorHandler(error);
		return;
	}
	JkWidgetWebJSONAPIClientWithGui.prototype.onError1.call(this, error, callback);
};

AppAPIClient.prototype.onDefaultErrorHandler = function(error) {
	var context = this.getContext();
	if(!(context != null)) {
		return;
	}
	if(!(this.widgetDefaultErrorHandler != null)) {
		context.showErrorDialog((error.toString()), null);
		return;
	}
	this.widgetDefaultErrorHandler(error);
};

AppAPIClient.prototype.addTask = function(data, callback, errorCallback) {
	this.doPost("/task", data, callback, errorCallback);
};

AppAPIClient.prototype.updateTask = function(id, data, callback, errorCallback) {
	this.doPut("/task" + (JkLangString.safeString(id)), data, callback, errorCallback);
};

AppAPIClient.prototype.deleteTask = function(id, callback, errorCallback) {
	this.doDelete("/task" + (JkLangString.safeString(id)), callback, errorCallback);
};

AppAPIClient.prototype.getTasks = function(callback, errorCallback) {
	this.doGet("/tasks", callback, errorCallback);
};

AppAPIClient.prototype.getWidgetDefaultErrorHandler = function() {
	return this.widgetDefaultErrorHandler;
};

AppAPIClient.prototype.setWidgetDefaultErrorHandler = function(v) {
	this.widgetDefaultErrorHandler = v;
	return this;
};

AppAPIClient.IS_INSTANCE = function(o) {
	return o != null && o._t != null && o._t["AppAPIClient"] === true;
};

AppAPIClient.instance = null;

let AppRegistrationWidget = function() {
	JkWidgetLayerWidget.call(this);
	this.vbox = null;
	this.firstname = null;
	this.lastname = null;
	this.Contact = null;
	this.address = null;
	this.username = null;
	this.password = null;
};

AppRegistrationWidget.prototype = (function(o) { function F() {}; F.prototype = o; return(new F()); }) (JkWidgetLayerWidget.prototype);
AppRegistrationWidget.prototype.constructor = AppRegistrationWidget;
AppRegistrationWidget.prototype._t = {
	"JkWidgetParentAwareWidget" : true,
	"JkWidgetHeightAwareWidget" : true,
	"AppRegistrationWidget" : true,
	"JkWidgetWidget" : true,
	"JkWidgetLayerWidget" : true,
	"JkWidgetContainerWidget" : true,
	"JkWidgetWidgetWithLayout" : true
};
AppRegistrationWidget.prototype._tobj = AppRegistrationWidget;

AppRegistrationWidget.NEW_JkUiGuiApplicationContext = function(context) {
	var v = new AppRegistrationWidget;
	return v.CTOR_AppRegistrationWidget_JkUiGuiApplicationContext(context);
};

AppRegistrationWidget.prototype.CTOR_AppRegistrationWidget_JkUiGuiApplicationContext = function(context) {
	this.password = null;
	this.username = null;
	this.address = null;
	this.Contact = null;
	this.lastname = null;
	this.firstname = null;
	this.vbox = null;
	if(JkWidgetLayerWidget.prototype.CTOR_JkWidgetLayerWidget_JkUiGuiApplicationContext.call(this, context) == null) {
		return null;
	}
	return this;
};

AppRegistrationWidget.prototype.initializeWidget = function() {
	var submitbtn = JkWidgetCommonButtonWidget.forText(this.context, "SUBMIT", (function() {
	}.bind(this)));
	submitbtn.setWidgetFontSize((this.context.getHeightValue("6mm")));
	this.vbox.addWidget(submitbtn);
	var loginbtn = JkWidgetLabelWidget.forText(this.context, "LOGIN");
	loginbtn.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.vbox.addWidget(loginbtn);
};

AppRegistrationWidget.prototype.createWidget = function() {
	JkWidgetLayerWidget.prototype.createWidget.call(this);
	var thisWidget = this;
	var widget = JkWidgetCanvasWidget.NEW_JkUiGuiApplicationContext(this.context);
	widget.setWidgetColor((JkGfxColor.instance("#347890")));
	this.addWidget(widget);
	var widget2 = JkWidgetVerticalScrollerWidget.NEW_JkUiGuiApplicationContext(this.context);
	var widget3 = JkWidgetAlignWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.vbox = JkWidgetVerticalBoxWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.vbox.setWidgetMargin((this.context.getHeightValue("10sm")));
	this.vbox.setWidgetSpacing((this.context.getHeightValue("100um")));
	var widget4 = JkWidgetLabelWidget.NEW_JkUiGuiApplicationContext(this.context);
	widget4.setWidgetText("Create Accounts");
	widget4.setWidgetTextColor((JkGfxColor.black()));
	widget4.setWidgetFontSize((this.context.getHeightValue("6mm")));
	widget4.setWidgetTextAlign(JkWidgetLabelWidget.ALIGN_CENTER);
	widget4.setWidgetFontBold(true);
	this.vbox.addWidget(widget4);
	this.firstname = JkWidgetCommonTextInputWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.firstname.setWidgetType(JkWidgetCommonTextInputWidget.TYPE_NAME);
	this.firstname.setWidgetPlaceholder("FIRST NAME");
	this.firstname.setWidgetBackgroundColor((JkGfxColor.white()));
	this.firstname.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.firstname.setWidgetPadding1((this.context.getHeightValue("2500um")));
	this.vbox.addWidget(this.firstname);
	this.lastname = JkWidgetCommonTextInputWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.lastname.setWidgetType(JkWidgetCommonTextInputWidget.TYPE_NAME);
	this.lastname.setWidgetPlaceholder("LAST NAME");
	this.lastname.setWidgetBackgroundColor((JkGfxColor.white()));
	this.lastname.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.lastname.setWidgetPadding1((this.context.getHeightValue("2500um")));
	this.vbox.addWidget(this.lastname);
	this.Contact = JkWidgetCommonTextInputWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.Contact.setWidgetType(JkWidgetCommonTextInputWidget.TYPE_NAME);
	this.Contact.setWidgetPlaceholder("Contact Number");
	this.Contact.setWidgetBackgroundColor((JkGfxColor.white()));
	this.Contact.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.Contact.setWidgetPadding1((this.context.getHeightValue("2500um")));
	this.vbox.addWidget(this.Contact);
	this.address = JkWidgetCommonTextInputWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.address.setWidgetType(JkWidgetCommonTextInputWidget.TYPE_NAME);
	this.address.setWidgetPlaceholder("ADDRESS");
	this.address.setWidgetBackgroundColor((JkGfxColor.white()));
	this.address.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.address.setWidgetPadding1((this.context.getHeightValue("2500um")));
	this.vbox.addWidget(this.address);
	this.username = JkWidgetCommonTextInputWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.username.setWidgetType(JkWidgetCommonTextInputWidget.TYPE_NAME);
	this.username.setWidgetPlaceholder("USERNAME");
	this.username.setWidgetBackgroundColor((JkGfxColor.white()));
	this.username.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.username.setWidgetPadding1((this.context.getHeightValue("2500um")));
	this.vbox.addWidget(this.username);
	this.password = JkWidgetCommonTextInputWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.password.setWidgetType(JkWidgetCommonTextInputWidget.TYPE_NAME);
	this.password.setWidgetPlaceholder("PASSWORD");
	this.password.setWidgetBackgroundColor((JkGfxColor.white()));
	this.password.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.password.setWidgetPadding1((this.context.getHeightValue("2500um")));
	this.vbox.addWidget(this.password);
	widget3.addWidget1(this.vbox, 0.5, 0.5, true);
	widget2.addWidget(widget3);
	this.addWidget(widget2);
};

AppRegistrationWidget.IS_INSTANCE = function(o) {
	return o != null && o._t != null && o._t["AppRegistrationWidget"] === true;
};

let AppLoginWidget = function() {
	JkWidgetLayerWidget.call(this);
	this.vbox = null;
	this.email = null;
	this.password = null;
};

AppLoginWidget.prototype = (function(o) { function F() {}; F.prototype = o; return(new F()); }) (JkWidgetLayerWidget.prototype);
AppLoginWidget.prototype.constructor = AppLoginWidget;
AppLoginWidget.prototype._t = {
	"JkWidgetParentAwareWidget" : true,
	"JkWidgetHeightAwareWidget" : true,
	"JkWidgetWidget" : true,
	"JkWidgetWidgetWithLayout" : true,
	"JkWidgetLayerWidget" : true,
	"JkWidgetContainerWidget" : true,
	"AppLoginWidget" : true
};
AppLoginWidget.prototype._tobj = AppLoginWidget;

AppLoginWidget.NEW_JkUiGuiApplicationContext = function(context) {
	var v = new AppLoginWidget;
	return v.CTOR_AppLoginWidget_JkUiGuiApplicationContext(context);
};

AppLoginWidget.prototype.CTOR_AppLoginWidget_JkUiGuiApplicationContext = function(context) {
	this.password = null;
	this.email = null;
	this.vbox = null;
	if(JkWidgetLayerWidget.prototype.CTOR_JkWidgetLayerWidget_JkUiGuiApplicationContext.call(this, context) == null) {
		return null;
	}
	return this;
};

AppLoginWidget.prototype.initializeWidget = function() {
	JkWidgetLayerWidget.prototype.initializeWidget.call(this);
	var signupbtn = JkWidgetCommonButtonWidget.forText(this.context, "Login", (function() {
		JkWidgetCommonNavigationWidget.switchToContainer(this, (AppRegistrationWidget.NEW_JkUiGuiApplicationContext(this.context)));
	}.bind(this)));
	signupbtn.setWidgetBackgroundColor((JkGfxColor.instance("#347890")));
	signupbtn.setWidgetTextColor((JkGfxColor.white()));
	signupbtn.setWidgetFontSize((this.context.getHeightValue("4mm")));
	this.vbox.addWidget(signupbtn);
};

AppLoginWidget.prototype.createWidget = function() {
	JkWidgetLayerWidget.prototype.createWidget.call(this);
	var thisWidget = this;
	var widget = JkWidgetCanvasWidget.NEW_JkUiGuiApplicationContext(this.context);
	widget.setWidgetColor((JkGfxColor.instance("#347890")));
	this.addWidget(widget);
	var widget2 = JkWidgetVerticalScrollerWidget.NEW_JkUiGuiApplicationContext(this.context);
	var widget3 = JkWidgetAlignWidget.NEW_JkUiGuiApplicationContext(this.context);
	widget3.setWidgetMarginLeft(400);
	widget3.setWidgetMarginRight(400);
	this.vbox = JkWidgetVerticalBoxWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.vbox.setWidgetMargin((this.context.getHeightValue("5000um")));
	this.vbox.setWidgetSpacing((this.context.getHeightValue("2000um")));
	var widget4 = JkWidgetLabelWidget.NEW_JkUiGuiApplicationContext(this.context);
	widget4.setWidgetText("ADMIN Login");
	widget4.setWidgetTextColor((JkGfxColor.instance("#2A9D8F")));
	widget4.setWidgetFontSize((this.context.getHeightValue("4mm")));
	widget4.setWidgetTextAlign(JkWidgetLabelWidget.ALIGN_CENTER);
	widget4.setWidgetFontBold(true);
	this.vbox.addWidget(widget4);
	this.email = JkWidgetCommonTextInputWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.email.setWidgetType(JkWidgetCommonTextInputWidget.TYPE_EMAIL_ADDRESS);
	this.email.setWidgetPlaceholder("Email Address");
	this.email.setWidgetBackgroundColor((JkGfxColor.instance("#b0b0b0")));
	this.email.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.email.setWidgetPadding1((this.context.getHeightValue("2500um")));
	this.vbox.addWidget(this.email);
	this.password = JkWidgetCommonTextInputWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.password.setWidgetType(JkWidgetCommonTextInputWidget.TYPE_PASSWORD);
	this.password.setWidgetPlaceholder("Password");
	this.password.setWidgetBackgroundColor((JkGfxColor.instance("#b0b0b0")));
	this.password.setWidgetFontSize((this.context.getHeightValue("3mm")));
	this.password.setWidgetPadding1((this.context.getHeightValue("2500um")));
	this.vbox.addWidget(this.password);
	widget3.addWidget1(this.vbox, 0.5, 0.5, true);
	widget2.addWidget(widget3);
	this.addWidget(widget2);
};

AppLoginWidget.IS_INSTANCE = function(o) {
	return o != null && o._t != null && o._t["AppLoginWidget"] === true;
};

let AppMainScreen = function() {
	JkWidgetScreenForWidget.call(this);
	this.navi = null;
};

AppMainScreen.prototype = (function(o) { function F() {}; F.prototype = o; return(new F()); }) (JkWidgetScreenForWidget.prototype);
AppMainScreen.prototype.constructor = AppMainScreen;
AppMainScreen.prototype._t = {
	"JkUiScreen" : true,
	"JkUiScreenWithContext" : true,
	"AppMainScreen" : true,
	"JkWidgetScreenForWidget" : true
};
AppMainScreen.prototype._tobj = AppMainScreen;

AppMainScreen.NEW = function() {
	var v = new AppMainScreen;
	return v.CTOR_AppMainScreen();
};

AppMainScreen.prototype.CTOR_AppMainScreen = function() {
	this.navi = null;
	if(JkWidgetScreenForWidget.prototype.CTOR_JkWidgetScreenForWidget.call(this) == null) {
		return null;
	}
	return this;
};

AppMainScreen.prototype.initialize = function() {
	JkWidgetScreenForWidget.prototype.initialize.call(this);
	this.navi = JkWidgetCommonNavigationWidget.NEW_JkUiGuiApplicationContext(this.context);
	this.navi.setWidgetEnableActionBar(false);
	this.setWidget(this.navi);
	AppAPIClient.create(this.context, this.navi);
	this.navi.pushWidget((AppLoginWidget.NEW_JkUiGuiApplicationContext(this.context)));
};

AppMainScreen.main = function(args) {
	var context = JkUiGuiApplicationContextForHTML.NEW();
	var resources = [];
	context.prepareResources(resources, (function() {
		var main = AppMainScreen.NEW();
		if(JkUiScreenWithContext.IS_INSTANCE && JkUiScreenWithContext.IS_INSTANCE(main)) {
			main.setContext(context);
		}
		main.initialize();
	}.bind(this)));
	return 0;
};

AppMainScreen.main();

AppMainScreen.IS_INSTANCE = function(o) {
	return o != null && o._t != null && o._t["AppMainScreen"] === true;
};
