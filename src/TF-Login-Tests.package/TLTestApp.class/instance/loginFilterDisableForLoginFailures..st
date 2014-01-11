as yet unclassified
loginFilterDisableForLoginFailures: user
	"If logins have been disabled for too many login failures, return text to present to user,
	otherwise nil to allow login.
	
	Note that we use the same message here as is used in #loginFailedUser:from: so that
	there is no indication to the user that this time the correct password was actually entered." 

	| until |
	^ (user applicationProperties includesKey: 'disabledForLoginFailures')
		ifTrue: [
			until := user applicationProperties at: 'disabledForLoginFailures'.
			until < DateAndTime current
				ifTrue: [
					user applicationProperties removeKey: 'disabledForLoginFailures'.
				 	nil ]
				ifFalse: [
					self disabledForLoginFailuresText ]]
		ifFalse: [ nil ]