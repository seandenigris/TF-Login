as yet unclassified
passwordIsInvalid
	^ passwordIsInvalid := (self loginComponent authenticationManager verifyPassword: currentPassword for: self session user) not.
