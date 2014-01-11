public
baseFileNamesContainedIn: aCollection
	^ (aCollection collect: [ :each | self filenameWithoutVersionFor: each ]) asSet