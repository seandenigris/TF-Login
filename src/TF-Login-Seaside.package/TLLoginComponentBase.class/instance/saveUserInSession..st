persistence
saveUserInSession: aSession
	"This method is for use by forked processes in which the session object is not available."
	| newUser oldUser |
	aSession user isNil ifFalse: [
		oldUser := self authenticationManager userForUsername: aSession user username.
		newUser := oldUser updateFromUser: aSession user.
		self authenticationManager updateUser: newUser deepCopy]