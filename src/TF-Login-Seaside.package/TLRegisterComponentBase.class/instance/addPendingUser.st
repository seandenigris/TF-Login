rendering
addPendingUser
	
	| pendingUser |
	pendingUser := self loginComponent authenticationManager  
			addPendingRegistrationUser: (self  username)
			password:  (self  password)
			email: (self  email)
			regId: self loginComponent authenticationManager generateRegId.
	^ pendingUser 	