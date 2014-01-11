as yet unclassified
userForUsername: username
	| userId |
	lock critical: [ 
		self incrementRequests.
		userId := self userIdsByUsernames at: username asLowercase ifAbsent: [ ^ nil ].
		self makeRecentlyUsed: userId.
		^ self userForIdUnsynchronized: userId ]
