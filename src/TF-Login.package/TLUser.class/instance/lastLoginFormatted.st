as yet unclassified
lastLoginFormatted
	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: 'on '.
	self lastLogin printYMDOn: stream.
	stream nextPutAll: ' at '.
	self lastLogin printHMSOn: stream.
	stream
		nextPutAll: ' ';
		nextPutAll: self lastLogin timeZoneAbbreviation.
	^ stream contents