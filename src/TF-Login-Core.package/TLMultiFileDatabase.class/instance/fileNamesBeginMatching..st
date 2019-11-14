public
fileNamesBeginMatching: aWildcardString
	rw sharedRead: [
		^ (self directoryFor: aWildcardString) fileNamesMatching: aWildcardString ]
