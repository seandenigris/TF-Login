as yet unclassified
newUsernameExists
	^ usernameExists := self session user username ~= newUsername
		and: [ self loginComponent authenticationManager usernameExists: newUsername ]