as yet unclassified
asString

	| stream |
	stream := WriteStream on: String new.
	self do: [ :each |
		stream
			nextPutAll: each asString;
			nextPutAll: ', '.
		].
	^ stream contents allButLast: 2