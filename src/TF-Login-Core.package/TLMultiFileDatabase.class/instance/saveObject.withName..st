public
saveObject: anObject withName: aString
	| fn version dir filename |
	rw exclusiveWrite: [
		dir := self directoryFor: aString.
		self dirlist at: (self keyForDirectory: dir) put: dir.
		version := (fn := self lastSavedFileNamed: aString) isNil
  	          ifTrue: [ 1 ]
   	         ifFalse: [ (self versionFor: fn) + 1 ].
		filename := dir / (aString  , '.' , version asString).
		FLSerializer serialize: anObject toFileNamed:  filename fullName.
		"self trimFilesNamed: aString." 
		version > self maxEntryCount ifTrue: [
			(dir / (aString,'.', (version - self maxEntryCount) asString)) deleteIfAbsent: [ self trimFilesNamed: aString ]].
		self rebalance: dir]
	