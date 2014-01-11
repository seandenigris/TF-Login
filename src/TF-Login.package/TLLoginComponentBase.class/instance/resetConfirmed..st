password-reset
resetConfirmed: regId 	
	^ resetConfirmed := self authenticationManager userForPasswordReset: regId
