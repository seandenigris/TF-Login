public
fileNamesBeginMatching: aWildcardString
	rw sharedRead: [
		^ (self directoryFor: aWildcardString) filesMatching: aWildcardString ]
