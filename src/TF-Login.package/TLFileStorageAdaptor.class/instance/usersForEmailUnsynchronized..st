public
usersForEmailUnsynchronized: email
	| encEmail usernames |
	usernames := Set new.
	encEmail := self encodeUsername: email.
	(db fileNamesMatching: '*-', encEmail , '.*')
		do: [ :each |
			| user |
			user := db restoreObjectNamed: (self baseFileNameFor: each).
			usernames add: user ].			
	^ usernames