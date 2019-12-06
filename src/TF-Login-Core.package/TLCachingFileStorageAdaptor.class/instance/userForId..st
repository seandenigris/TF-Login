as yet unclassified
userForId: aUserId
	lock critical: [
		self incrementRequests.
		self makeRecentlyUsed: aUserId.
		^ usersById at: aUserId ifAbsent: [
			(self allUserIdsUnsynchronized  includes: aUserId)
				ifTrue: [
					self addToCache: (rw sharedRead: [
						super userForIdUnsynchronized: aUserId ])]
				ifFalse: [ nil ]]]
