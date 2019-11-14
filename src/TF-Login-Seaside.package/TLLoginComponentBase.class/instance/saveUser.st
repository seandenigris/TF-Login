persistence
saveUser
	| newUser oldUser |
	self session user isNil
		ifTrue: [ ^ self ].
	oldUser := self authenticationManager userForUsername: self session user username.
	oldUser isNil
		ifTrue: [ ^ self ].
	newUser := (oldUser updateFromUser: self session user).
	self authenticationManager updateUser: newUser deepCopy.