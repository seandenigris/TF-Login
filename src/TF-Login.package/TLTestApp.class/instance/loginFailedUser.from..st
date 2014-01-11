as yet unclassified
loginFailedUser: username from: address
	"After the configured number of consecutive failed login attempts, disable the
	account for 2 minutes. Answer nil or text to be displayed in place of the normal
	authorization failure message."
	
	^ (loginComponent authenticationManager usernameExists: username)
		ifTrue: [
			| failedUser failureCount |
			failedUser := loginComponent authenticationManager userForUsername: username.
			failureCount := failedUser applicationProperties at: 'failedLoginAttempts' ifAbsent: [ 0 ].
			failureCount < self maximumFailedLoginAttempts
				ifTrue: [
					failedUser applicationProperties at: 'failedLoginAttempts' put: (failureCount  + 1).
					loginComponent saveUser: failedUser.
					nil ]
				ifFalse: [
					failedUser applicationProperties at: 'disabledForLoginFailures' put: (DateAndTime current) + 2 minutes.
					loginComponent saveUser: failedUser.
					self disabledForLoginFailuresText ]]
		ifFalse: [ nil ]