private
keyForDirectory: aDirectory
	| pathParts |
	pathParts := aDirectory pathSegments.
	^ ((pathParts copyFrom: (pathParts lastIndexOf: self storageDirectory basename) + 1 to: pathParts size)
		inject: (WriteStream on: '')
		into: [ :stream :each | stream nextPutAll: each; yourself ]) contents
