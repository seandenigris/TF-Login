as yet unclassified
addToCache: aUser
	"Must be called from within lock critical:."
	aUser ifNotNil: [
		usersById at: aUser userId put: aUser.
		usersByUsername at: aUser username asLowercase put: aUser.
		(lru includes: aUser) ifFalse: [
			self incrementMisses.
			lru add: aUser userId.
			[lru size > self maxLRUSize] whileTrue: [
				| id username |
				self incrementEvictions.
				id := lru removeFirst.
				username := (usersById removeKey: id) username asLowercase.
				usersByUsername removeKey: username asLowercase ]]].
	^ aUser