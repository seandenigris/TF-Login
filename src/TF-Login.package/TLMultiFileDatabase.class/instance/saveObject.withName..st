public
saveObject: anObject withName: aString
	| fn version dir filename |
	rw exclusiveWrite: [
		dir := self directoryFor: aString.
		self dirlist at: (self keyForDirectory: dir) put: dir.
		version := (fn := self lastSavedFileNamed: aString) isNil
  	          ifTrue: [ 1 ]
   	         ifFalse: [ (self versionFor: fn) + 1 ].
		filename := dir fullName , '/', aString  , '.' , version asString.
		FLSerializer serialize: anObject toFileNamed:  filename.
		"self trimFilesNamed: aString." 
		version > self maxEntryCount ifTrue: [
			dir
				deleteFileNamed: aString,'.', (version - self maxEntryCount) asString
				ifAbsent: [ self trimFilesNamed: aString ]].
		self rebalance: dir]
	