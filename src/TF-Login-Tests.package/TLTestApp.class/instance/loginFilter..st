as yet unclassified
loginFilter: user
	"Return nil to allow login, or text to be displayed to the user if login is disallowed.
	First we check for disable from login failures, then for user requested disable."
	
	^ (self loginFilterDisableForLoginFailures: user) ifNil: [self loginFilterDisabledByUser: user ]