as yet unclassified
addPendingUser: html
	"Add a new pending user. Answer the new pendingUser."
	
	^ self loginComponent authenticationManager  
			addPendingRegistrationUser: (self  username)
			password:  (self  password)
			email: (self  email)
			regId: self loginComponent authenticationManager generateRegId.
	