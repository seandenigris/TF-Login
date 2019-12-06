as yet unclassified
initialize
	
	super initialize.
	loginComponent := TLLoginComponent appName: 'LoginTestApp'.
	loginComponent onAnswer: [ :user | user ifNotNil: [ : u | self loggedIn: u ] ].
	loginComponent passwordValidator: [ :pswd | self validatePassword: pswd ].
	loginComponent onLogin: [ :user | self loginFilter: user ].
	loginComponent onLoginFail: [ :username :address | self loginFailedUser: username from: address ].

	ajaxLoginComponent := TLAjaxLoginComponent appName: 'LoginTestApp'.
	ajaxLoginComponent onAnswer: [ :user | user ifNotNil: [ : u | self loggedIn: u ] ].
	ajaxLoginComponent passwordValidator: [ :pswd | self validatePassword: pswd ].
	ajaxLoginComponent onLogin: [ :user | self loginFilter: user ].
	ajaxLoginComponent onLoginFail: [ :username :address | self loginFailedUser: username from: address ].

	self children add: loginComponent.
	editAccountComponent := (TLEditAccountComponent loginComponent: loginComponent).
	editAccountComponent onAnswer: [ self editingAccount: false].
	self children add: editAccountComponent.
	self setMailSenders 