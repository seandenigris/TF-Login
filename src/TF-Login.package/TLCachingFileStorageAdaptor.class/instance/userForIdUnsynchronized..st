as yet unclassified
userForIdUnsynchronized: aUserId
	"Must be called from within lock critical:."
		self incrementRequests.
		^ usersById at: aUserId ifAbsent: [
			self addToCache: (super userForIdUnsynchronized: aUserId )]
