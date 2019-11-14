as yet unclassified
on: aDirectoryName rwLocking: aBoolean
	^ (self basicNew)
		storageDirectoryName: aDirectoryName;
		initializeWithRwLocking: aBoolean;
		yourself