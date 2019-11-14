persistence
deleteLoggedInUser
	| userToDelete |
	userToDelete := self session user.
	self logout.
	self authenticationManager deleteUser: userToDelete