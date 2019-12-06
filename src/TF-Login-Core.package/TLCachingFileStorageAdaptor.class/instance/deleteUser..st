as yet unclassified
deleteUser: aUser
	lock critical: [
		self userIdsByUsernames removeKey: aUser username asLowercase.
		self removeFromCache: aUser.
		self queueDeleteRequest: aUser]