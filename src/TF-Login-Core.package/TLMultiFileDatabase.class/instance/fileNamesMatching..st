public
fileNamesMatching: aWildcardString
	rw sharedRead: [
		^ self fileNamesMatchingNoLock: aWildcardString ]
