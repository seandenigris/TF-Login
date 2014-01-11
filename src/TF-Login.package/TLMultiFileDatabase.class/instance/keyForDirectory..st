private
keyForDirectory: aDirectory
	| pathParts |
	pathParts := aDirectory pathParts.
	^ ((pathParts copyFrom: (pathParts lastIndexOf: self storageDirectory localName) + 1 to: pathParts size)
		inject: (WriteStream on: '')
		into: [ :stream :each | stream nextPutAll: each; yourself ]) contents
