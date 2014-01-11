*TF-Login
base36Decoded
	| num s |
	s := WriteStream on: self class new.
	num := Integer readFrom: self asUppercase readStream base: 36.
	[ num > 0 ] whileTrue: [
		s nextPut: (num - (256 * (num //256))) asCharacter.
		num := num // 256].
	^ s contents
