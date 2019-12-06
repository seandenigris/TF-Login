as yet unclassified
saveChanges
	| newUser |
	newUser := self newUser.
	self loginComponent authenticationManager updateUser: newUser.
	self session user: newUser.
	self reset.
