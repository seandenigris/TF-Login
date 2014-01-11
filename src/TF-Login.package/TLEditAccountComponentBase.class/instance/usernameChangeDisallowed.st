as yet unclassified
usernameChangeDisallowed 
	
	^ usernameChangeDisallowed := self allowUsernameChange not and: [ newUsername ~= self session user username ]
