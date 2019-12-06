as yet unclassified
updateUser: aUser
	| user |
	lock critical: [
		user := self userForIdUnsynchronized: aUser userId.
		user username = aUser username ifFalse: [
			userIdsByUsernames removeKey: user username asLowercase.
			userIdsByUsernames at: aUser username asLowercase put: aUser userId ].
		self removeFromCache: user.
		self decrementMisses.
		self addToCache: aUser.
		self makeRecentlyUsed: aUser userId.
		super updateUserUnsynchronized: aUser ]