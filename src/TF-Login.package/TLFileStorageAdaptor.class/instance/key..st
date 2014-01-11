private
key: aUser
	| em |
	em := (aUser email) ifNil: [ 'nil' ]. 
	^ (WriteStream on: String new)
		nextPutAll: aUser userId; 
		nextPut: $-;
		nextPutAll: aUser username asLowercase base36Encoded;
		nextPut: $-;
		nextPutAll: em asLowercase base36Encoded;
		contents.
