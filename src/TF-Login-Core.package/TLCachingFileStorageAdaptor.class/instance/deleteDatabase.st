as yet unclassified
deleteDatabase
	rw exclusiveWrite: [
		usersById := Dictionary new.
		usersByUsername  := Dictionary new.
		lru := OrderedCollection new.
		allUserIds := nil.
		allUsernames := nil.
		self resetStatistics.
		self queueDeleteDbRequest ].
	[ self processing ] whileTrue: [ 100 milliSeconds asDelay wait ]
	