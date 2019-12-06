rendering
authenticationErrorText
	^ authenicationErrorText ifNil: [ self defaultAuthenticationErrorText ]
