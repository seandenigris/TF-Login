public
deleteFilesNamed: aString
	| filenames dir |
	rw exclusiveWrite: [
		dir := self directoryFor: aString.
		filenames := dir filesMatching: (self matchBlock value: aString).
		filenames do: [ :each | each delete ].
		dir fileNames size = 0 ifTrue: [ self dirlist removeKey: (self keyForDirectory: dir) ifAbsent: []]]
