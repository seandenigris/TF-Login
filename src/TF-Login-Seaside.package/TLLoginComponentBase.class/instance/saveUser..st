persistence
saveUser: aUser
	"Use this method to save a user other than the currently logged in one."

	| newUser oldUser |
	aUser isNil
		ifTrue: [ ^ self ].
	oldUser := self authenticationManager userForId: aUser userId.
	oldUser isNil
		ifTrue: [ ^ self ].
	newUser := oldUser updateFromUser: aUser.
	self authenticationManager updateUser: newUser deepCopy.