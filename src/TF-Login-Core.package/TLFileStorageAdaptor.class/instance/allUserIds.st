public
allUserIds
	rw sharedRead: [
		^ self allUserIdsUnsynchronized ]