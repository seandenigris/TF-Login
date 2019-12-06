as yet unclassified
removeFromCache: aUser
	"Must be called from within lock critical:."
	aUser ifNotNil: [
		usersById removeKey:  aUser userId ifAbsent: [].
		usersByUsername removeKey: aUser username asLowercase ifAbsent: [].
		lru remove: aUser userId  ifAbsent: []].
	^ aUser