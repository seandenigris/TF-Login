as yet unclassified
createUser: aUser
	lock critical: [
		self userIdsByUsernames at: aUser username asLowercase put: aUser userId.
		self decrementMisses.
		self addToCache: aUser.
		self createUserUnsynchronized: aUser ] 