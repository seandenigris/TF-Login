public
deleteFilesNamed: aString
	| filenames dir |
	rw exclusiveWrite: [
		dir := self directoryFor: aString.
		filenames := dir fileNamesMatching: (self matchBlock value: aString).
		filenames do: [ :each | dir deleteFileNamed: each ].
		dir fileNames size = 0 ifTrue: [ self dirlist removeKey: (self keyForDirectory: dir) ifAbsent: []]]
