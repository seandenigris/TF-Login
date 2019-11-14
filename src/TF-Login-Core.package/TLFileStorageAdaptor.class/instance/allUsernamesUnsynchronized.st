private
allUsernamesUnsynchronized
	^ (db fileNames collect: [ :each |
		(self decodeUsername: (self usernamePart: each)) asLowercase ]) asSet.
