public
userForId: aUserId

	rw sharedRead: [ ^ self userForIdUnsynchronized: aUserId ].