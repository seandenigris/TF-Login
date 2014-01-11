login-logout
authenticationManager
	^ authenticationManager ifNil: [
		authenticationManager := TLAuthenticationManager loginComponent: self ]