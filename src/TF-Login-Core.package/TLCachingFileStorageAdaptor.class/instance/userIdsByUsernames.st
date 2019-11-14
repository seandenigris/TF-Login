as yet unclassified
userIdsByUsernames
	^ userIdsByUsernames ifNil: [ userIdsByUsernames := super userIdsByUsernamesUnsynchronized ]