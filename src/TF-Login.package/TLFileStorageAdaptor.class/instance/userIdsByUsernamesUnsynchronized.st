private
userIdsByUsernamesUnsynchronized
	| dict n |
	dict := Dictionary new.
	n := 0.
	db fileNamesDo: [ :each |
		n := n + 1.
		(n \\ 10000) = 0 ifTrue: [ Transcript cr; show: n].
		dict 
			at: (self decodeUsername: (self usernamePart: each))
			put: (self userIdPart: each)].
	^ dict.
